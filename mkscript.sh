#!/usr/bin/env bash 

# creates shell script template file in the current working directory 
function _mkscript {
    if [ "$#" -ne 1 ]; then
        echo "Invalid argument, need one argument, file_name"
         return
    fi

    cat ~/scripts/templates/bash/_script_template > "$PWD/$1.sh"
    chmod 755 "$PWD/$1.sh"
}
