#!/usr/bin/env bash

function chterra() {
    local TF_VERSION="11"

    if [ "$#" -gt 0 ]; then

        local TF_VERSION=$1
    fi

    (
        if [ -f "/usr/local/bin/terraform${TF_VERSION}" ]; then

            rm /usr/local/bin/terraform
            ln -s "/usr/local/bin/terraform${TF_VERSION}" /usr/local/bin/terraform
            echosuccess "Now using $(terraform --version)"
        else
            echowarn "File /usr/local/bin/terraform${1} does not exist."
        fi
    )
}
