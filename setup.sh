#!/bin/sh

#####
# This script installs the Sublime Text 2 Package Control if not already
# installed. It then copies my personal default configurations for various
# packages into the default User package.
#####

# The path to the Sublime Text 2 config directory
config=~/Library/Application\ Support/Sublime\ Text\ 2

# The path to the Installed Packages directory
packages=$config/Installed\ Packages

# The path to the Package Control package file
control=$packages/Package\ Control.sublime-package

# The path to the default User package directory
user=$config/Packages/User

# The URL from which to download the Package Control package file
url=https://sublime.wbond.net/Package%20Control.sublime-package

#####
# Setup
#####

# Download and install the Sublime Text 2 Package Control

[ -f "$control" ] || curl -o "$control" "$url"

# Copy the contents of the User package over the defaults
cp User/* "$user/"

echo "Successfully setup Sublime Text 2. If it's running, please restart now."
