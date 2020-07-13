#!/usr/bin/env bash 

function _gomod() {
    local ns="github.com/le-garden-fox"
    local mod_name=$1
    mkdir $mod_name
    (
        cd $mod_name
        go mod init $ns/$mod_name
    )
}
