#!/usr/bin/env bash

# transforms text to red text
function danger() {
    local RED="\033[0;31m"
    local NC='\033[0m'

    printf "${RED}${1} ${NC}\n"
}

# transforms text to yellow text
function warn() {
    local YELLOW='\033[1;33m'
    local NC='\033[0m'
    printf "${YELLOW}${1} ${NC}\n"
}

 #trsnsforms text to green text
function success() {
    local GREEN='\033[0;32m'
    local NC='\033[0m'
    printf "${GREEN}${1} ${NC}\n"
}
