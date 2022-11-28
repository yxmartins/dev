#! /bin/bash

# including data
    source  ~/files/nerd/dev/sh/sync-script/front.sh
    source  ~/files/nerd/dev/sh/sync-script/sync-script.sh

# Sync files and dirs
    sync -f
    sync -d

# for every $i move to the directory td[$i] and then commit and push to github
    for i in ${Ng[@]}; do
        cd ${gd[$i]}
        git add .
        git commit -m "..."
        git push ${gr[$i]} master
    done

