

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
                esac
                case $@ in @) 
                    shift 1;  echo "alias not defined";;
                esac
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



    function push() {
        case $* in
            config* ) shift 1; command git push config master;;
        esac
        case $* in
            research* ) shift 1; command git push research master;;
        esac
        case $* in
            personal* ) shift 1; command git push personal master;;
        esac
        case $* in
            dev* ) shift 1; command git push dev master;;
        esac

        case $* in
            *) shift 1;  echo "remote not defined";;
        esac
        }


