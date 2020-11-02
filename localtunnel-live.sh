#!/usr/bin/env

npx supervisor -i . -- "$(which npx)" localtunnel --port 3000 | \
while read -r; do
    echo $REPLY;
    URL=$(echo $REPLY | grep "url is" | sed -E 's/.*url is.*(http.*)$/\1/')
    if [ $URL ]; then
        sed -i -E "s~Live url.*$~Live url: $URL~g" README.md;
        git add README.md;
        git commit -m "Update Live URL" \
           -c user.name="Github Actions" \
           -c user.email="$GITHUB_ACTOR@users.noreply.github.com";
        git push origin HEAD;
    fi;
done;