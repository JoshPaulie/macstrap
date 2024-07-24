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

# Dock
defaults write com.apple.dock "mineffect" -string "scale"
defaults write com.apple.dock "autohide" -bool "true"
defaults write com.apple.dock "tilesize" -int "54"
defaults write com.apple.dock "show-recents" -bool "false"

# Keyboard
# The following 2 greatly speedup the rate of which keys repeat (when holding down on keyboard)
defaults write NSGlobalDomain "KeyRepeat" -int "2"
defaults write NSGlobalDomain "InitialKeyRepeat" -int "25"

# Accessibility
sudo defaults write com.apple.universalaccess "reduceMotion" -bool "true"

# Enable battery percentage
defaults write $HOME/Library/Preferences/ByHost/com.apple.controlcenter.plist "BatteryShowPercentage" -bool "true"

# Auto-nonsense
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false # No auto caps
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false # No auto dashes
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false # No auto periods
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false # No "smart" quotes

# Screenshots
defaults write com.apple.screencapture type -string "png"
defaults write com.apple.screencapture disable-shadow -bool true

