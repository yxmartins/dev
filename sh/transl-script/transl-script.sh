#!/bin/bash

# including data
    if [ -f ~/files/nerd/dev/linux/transl-script/front.sh ]; then
        .  ~/files/nerd/dev/linux/transl-script/front.sh
    fi

# "transl" function
## "transl -lang[i]" translates the entered text to lang[i]
    function transl() {
        for i in ${!lang[@]}; do
            case $@ in 
                -${lang[$i]} ) 
                    shift 1; echo "Enter the text to be translated to ${langname[$i]}."; 
                    read text;
                    touch /tmp/transl.txt
                    echo "$text" > /tmp/transl.txt
                    echo "Translation to ${langname[$i]}:"
                    command trans :${lang[$i]} file:///tmp/transl.txt
                    rm /tmp/transl.txt;;
            esac
            case $@ in
                --${langname[$i]} )
                    shift 1; echo "Enter the text to be translated to ${langname[$i]}.";
                    read text;
                    touch /tmp/transl.txt
                    echo "$text" > /tmp/transl.txt
                    echo "Translation to ${langname[$i]}:"
                    command trans :${lang[$i]} file:///tmp/transl.txt
                    rm /tmp/transl.txt;;
            esac
        done
        case $@ in
            -languages )
                shift 1; echo "The defined languages are:";
                    for i in ${!lang[@]}; do
                        echo "* ${langname[$i]} (${lang[$i]})"
                    done;;
        esac
        case $@ in
            -l )
                shift 1; echo "The defined languages are:";
                    for i in ${!lang[@]}; do
                        echo "* ${langname[$i]} (${lang[$i]})"
                    done;;
        esac
        case $@ in
            --help )
                shift 1; printf "* Just write 'transl --language' or 'transl -lan', where 'language' is the language name and 'lang' is its abbreviation. \n\n* Type 'transl --languages' for the list of defined languages\n";;
        esac
        case $@ in
            -h )
                shift 1; printf "* Just write 'transl --language' or 'transl -lan', where 'language' is the language name and 'lang' is its abbreviation. \n\n* Type 'transl --languages' or 'transl -l' for the list of defined languages\n";;
        esac
    }

