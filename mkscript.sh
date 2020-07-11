#!/usr/bin/env bash 

# creates shell script template file in the current working directory 
function _mkscript {
    cat ~/scripts/templates/bash/_script_template > "$PWD/$1.sh"
    chmod 755 "$PWD/$1.sh"
}
