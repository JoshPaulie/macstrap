#!/bin/bash

# Color variables
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m'

# Error handling function
handle_error() {
    echo "${RED}Error: $1${NC}"
    exit 1
}

# Header
echo
echo "${YELLOW}##     ##    ###     ###### ${BLUE}  ######  ######## ########     ###    ########  ${NC}"
echo "${YELLOW}###   ###   ## ##   ##    ##${BLUE} ##    ##    ##    ##     ##   ## ##   ##     ## ${NC}"
echo "${YELLOW}#### ####  ##   ##  ##      ${BLUE} ##          ##    ##     ##  ##   ##  ##     ## ${NC}"
echo "${YELLOW}## ### ## ##     ## ##      ${BLUE}  ######     ##    ########  ##     ## ########  ${NC}"
echo "${YELLOW}##     ## ######### ##      ${BLUE}       ##    ##    ##   ##   ######### ##        ${NC}"
echo "${YELLOW}##     ## ##     ## ##    ##${BLUE} ##    ##    ##    ##    ##  ##     ## ##        ${NC}"
echo "${YELLOW}##     ## ##     ##  ###### ${BLUE}  ######     ##    ##     ## ##     ## ##        ${NC}"
echo

# Ensure Homebrew.sh install (package manager)
if ! command -v brew &> /dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "${GREEN}Homebrew is already installed"
fi

# Install daily software
grep -vE '^\s*#|^\s*$' apps.txt | xargs -I {} brew install {}

