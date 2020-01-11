#!/usr/bin/env bash 


function mkscript {
    cat ~/scripts/_script_template > $1
    chmod 755 $1
}
