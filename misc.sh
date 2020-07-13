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

# switches version of terraform
# creates symlink ot terraform of given version 
function _chterra() {
    local TF_VERSION="12"

    if [ "$#" -gt 0 ]; then

        local TF_VERSION=$1
    fi

    (
        if [ -f "/usr/local/bin/terraform${TF_VERSION}" ]; then

            if [ -f $HOME/.my-progs/terraform ]; then
                rm $HOME/.my-progs/terraform
            fi
            
            ln -s "/usr/local/bin/terraform${TF_VERSION}" $HOME/.my-progs/terraform
            _success "Now using $(terraform --version)"
        else
            _warn "File /usr/local/bin/terraform${1} does not exist."
        fi
    )
}
