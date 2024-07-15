#!/bin/bash

# Many, if not all, are from the very helpful https://macos-defaults.com/
# The rest are discovered by diff'ing the defaults file as it was when I created the system, and whatever I decide to compare

# Finder
defaults write com.apple.finder "AppleShowAllFiles" -bool "true"
defaults write com.apple.finder "ShowPathbar" -bool "true"
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"
defaults write com.apple.finder "FXPreferredViewStyle" -string "Nlsv" # View style to "List"
killall Finder

# Dock
defaults write com.apple.dock "mineffect" -string "scale"
defaults write com.apple.dock "autohide" -bool "true"
defaults write com.apple.dock "tilesize" -int "36"
killall dock

# Mouse (requires restart)
defaults write NSGlobalDomain com.apple.mouse.linear -bool "true"
