#! /bin/bash

# including data
    if [ -f ~/files/nerd/dev/sh/sync-script/front.sh ]; then
        source  ~/files/nerd/dev/sh/sync-script/front.sh
    fi

# SYNC
## For each i, "sync a[i]" sync s[i] and t[i]
## "sync --dir" sync all directories
## "sync --files" sync all files
## "sync --all" sync all directories and files
        function sync() {
            for i in ${!Nd[@]}; do
                case $1 in ${a[$i]} ) 
                    shift 1; command sudo rsync -av --progress --delete ${sd[$i]} ${td[$i]};;
                esac
            done
                 case $1 in 
                     --dirs | -d)
                        for j in ${!Nd[@]}; do
                            shift 1;  sudo rsync -av --progress --delete ${sd[$j]} ${td[$j]} --exclude=.git/*
                        done ;;
                     --files | -f)
                        for k in  ${!Nf[@]}; do
                            shift 1; sudo rsync --progress ${sf[$k]} ${tf[$k]}
                        done ;;
                     --all | -a)
                        shift 1; sync -f; sync -d;;
                     --config | -c)
                        echo "executing the config file...";;
                     *)
                        shift 1;  echo "alias not defined";;
                  esac

                  if [[ "$2" == "--github" || "$2" == "-gh" ]]; then
                      case $1 in 
                          --config | -c)
                               echo "configuring in github mode";;
                      esac
                  elif [[ "$2" == "--gitlab" || "$2" == "-gl" ]]; then
                      case $1 in
                          --config | -c)
                               echo "configuring in gitlab mode";;
                      esac
                  fi
             }

# PUSH
## define "sync-add"
    alias add="git add . && git commit -m "...""
## for each d=td[i]
### create a github repository with same name
### move to td[i]
### initilize git
### create an empty README.md
### remote add and remote set-url with name a[i]
### define "sync-push a[i]"
### execute sync-push a[i]
## define "sync-push --all"

# START
## copy the script to /etc/init.d


