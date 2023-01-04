# defining DIR arrays
## for each i obtain a triple of strings
    sd[0]=/home/yurixm/files/me/org/
    td[0]=/home/yurixm/git/github/personal/org
    a[0]="org_git"

    sd[1]=/home/yurixm/files/math/
    td[1]=/home/yurixm/git/github/personal/math
    a[1]="math_git"

    sd[2]=/home/yurixm/files/edu/
    td[2]=/home/yurixm/git/github/personal/edu
    a[2]="edu_git"

    sd[3]=/home/yurixm/files/config/
    td[3]=/home/yurixm/git/github/config
    a[3]="config_git"

    sd[4]=/home/yurixm/files/nerd/dev/
    td[4]=/home/yurixm/git/github/dev
    a[4]="dev_git"

    sd[5]=/home/yurixm/.vim/
    td[5]=/home/yurixm/git/github/personal/vim
    a[5]="vim_git"

    sd[6]=/home/yurixm/files/config/linux/mutt/
    td[6]=/home/yurixm/.mutt/
    a[6]="mutt"

    sd[7]=/home/yurixm/files/config/linux/mutt/
    td[7]=/home/yurixm/git/github/config/mutt/
    a[7]="mutt_git"
   
## define array of directory indexes
    Nd=(0 1 2 3 4 5 6 7)

# defining the FILES array
## for each i receive a pair of strings
    sf[0]=/home/yurixm/files/config/vim/vimrc 
    tf[0]=/home/yurixm/.vim/vimrc

    sf[1]=/home/yurixm/files/config/vim/snippets/tex.snippets
    tf[1]=/home/yurixm/.vim/bundle/vim-snipmate/snippets/tex.snippets

    sf[2]=/home/yurixm/files/config/linux/bash/bashrc
    tf[2]=/home/yurixm/.bashrc_add

    sf[3]=/home/yurixm/files/config/linux/openbox/lubuntu-rc.xml
    tf[3]=/home/yurixm/.config/openbox/lubuntu-rc.xml
   
## define array of files indexes
    Nf=(0 1 2 3)

# Github/Gitlab mode
## define the top directories
    gd[0]=/home/yurixm/git/github/config
    gd[1]=/home/yurixm/git/github/dev
    gd[2]=/home/yurixm/git/github/personal

## define the remotes
    gr[0]="config"
    gr[1]="dev"
    gr[2]="personal"

## define array of indexes for github/gitlab mode
    Ng=(0 1 2)

# declaring arrays
    declare -a sd
    declare -a td
    declare -a a
    declare -a Nd
    declare -a sf
    declare -a tf
    declare -a Nf
    declare -a gd
    declare -a gr
    declare -a Ng

