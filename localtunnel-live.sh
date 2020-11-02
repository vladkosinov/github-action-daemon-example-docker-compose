#!/usr/bin/env bash

npx supervisor -i . -- "$(which npx)" localtunnel --port 3000 | \
while read -r; do
    echo $REPLY;
    URL=$(echo $REPLY | grep "url is" | sed -E 's/.*url is.*(http.*)$/\1/')
    if [ $URL ]; then
        sed -i -E "s~Live url.*$~Live url: $URL~g" README.md;
        git add README.md;
        git -c user.name="Github Actions" \
            -c user.email="$GITHUB_ACTOR@users.noreply.github.com" \
            commit -m "Update Live URL";

        git push origin HEAD;
    fi;
done;