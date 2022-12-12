#!/bin/bash

# including data
    if [ -f ~/files/nerd/dev/sh/trnsl-sh/front.sh ]; then
        .  ~/files/nerd/dev/sh/trnsl-sh/front.sh
    fi

# "transl" function
## "transl -lang[i]" translates the entered text to lang[i]
    function trnsl() {
        for i in ${!lang[@]}; do
            case $@ in 
                -${lang[$i]} ) 
                    shift 1; echo "Enter the text to be translated to ${langname[$i]}."; 
                    read text;
                    touch /tmp/trnsl.txt
                    echo "$text" > /tmp/trnsl.txt
                    echo "Translation to ${langname[$i]}:"
                    command trans :${lang[$i]} file:///tmp/trnsl.txt
                    rm /tmp/trnsl.txt;;
            esac
            case $@ in
                --${langname[$i]} )
                    shift 1; echo "Enter the text to be translated to ${langname[$i]}.";
                    read text;
                    touch /tmp/trnsl.txt
                    echo "$text" > /tmp/trnsl.txt
                    echo "Translation to ${langname[$i]}:"
                    command trans :${lang[$i]} file:///tmp/trnsl.txt
                    rm /tmp/trnsl.txt;;
            esac
        done
        case $@ in
            --languages )
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
                shift 1; printf "* Just write 'trnsl --language' or 'trnsl -lan', where 'language' is the language name and 'lan' is its abbreviation. \n\n* Type 'trasl --languages' for the list of defined languages\n";;
        esac
        case $@ in
            -h )
                shift 1; printf "* Just write 'trnsl --language' or 'trnsl -lan', where 'language' is the language name and 'lang' is its abbreviation. \n\n* Type 'trnsl --languages' or 'trnsl -l' for the list of defined languages\n";;
        esac
    }

