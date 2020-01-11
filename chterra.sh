#!/usr/bin/env bash

# creates symlink ot terraform of given version 
function chterra() {
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
            success "Now using $(terraform --version)"
        else
            warn "File /usr/local/bin/terraform${1} does not exist."
        fi
    )
}
