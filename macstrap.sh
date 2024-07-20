#!/bin/bash

# Color variables
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m'


error_msg() {
	echo "${RED}Error: $1${NC}"
	exit 1
}

info_msg() {
	echo "${BLUE}$1{$NC}: $2"
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
	(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/bex/.zprofile
	eval "$(/opt/homebrew/bin/brew shellenv)"
else
	echo "${GREEN}Homebrew is already installed"
fi


# Install daily software
# grep	:: removes comments, blank lines
# tr	:: flattens lines into single line
brew install $(grep -vE '^\s*#|^\s*$' apps.txt | tr '\n' ' ')

# Set system settings
info_msg "Setting" "system prefrences"
. ./os-prefrences.sh
