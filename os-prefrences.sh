#!/bin/bash

# Many, if not all, are from the very helpful https://macos-defaults.com/
# The rest are discovered by creating a snapshot of `defaults read`, imperatively making the change, snap shotting `defaults read` again, then diff'ing to see what setting was impacted

# Globals
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true" # Show file extension whereever possible
defaults write NSGlobalDomain "AppleInterfaceStyle" -string "Dark" # Appearance: dark mode

# Finder
defaults write com.apple.finder "AppleShowAllFiles" -bool "true"
defaults write com.apple.finder "ShowPathbar" -bool "true"
defaults write com.apple.finder "FXPreferredViewStyle" -string "Nlsv" # View style to "List"
killall Finder

# Dock
defaults write com.apple.dock "mineffect" -string "scale"
defaults write com.apple.dock "autohide" -bool "true"
defaults write com.apple.dock "tilesize" -int "54"
defaults write com.apple.dock "show-recents" -bool "false"
killall dock

# Mouse (requires restart)
defaults write NSGlobalDomain com.apple.mouse.linear -bool "true" # Mouse acceleration: disabled

# Keyboard
# The following 2 greatly speedup the rate of which keys repeat (when holding down on keyboard)
defaults write NSGlobalDomain "KeyRepeat" -int "2"
defaults write NSGlobalDomain "InitialKeyRepeat" -int "25"

# Accessibility
defaults write com.apple.universalaccess "reduceMotion" -bool "true"

