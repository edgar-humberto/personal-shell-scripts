#!/usr/bin/env bash 

# creates shell script template file in the current working directory 
function mkscript {
    cat ~/scripts/templates/bash/_script_template > $PWD/$1
    chmod 755 $PWD/$1
}
