#!/usr/bin/env zsh

echo "IMPORTANT: You will need to disable SIP aka Rootless in order to fully execute this script, you can reenable it after."
echo "WARNING: It might disable things that you may not like. Please double check the services in the TODISABLE vars."
echo "ctrl-c now if you haven't disabled SIP and read https://lynmp.com/en/article/bsea28be02b4786217"

# TLDR
# Gatekeeper Disabling
# $ sudo spctl --master-disable
#
# System Integrity Protection (SIP) Disabling
# You have to enter Recovery Mode to do this when ⌘Command + R with power on the PC.
# $ csrutil disable
# $ csrutil status

echo "Setting up macOS"

$HOME/macos/bin/install.zsh

# Gatekeeper Disabling
# $ sudo spctl --master-enable
#
# System Integrity Protection (SIP) Disabling
# You have to enter Recovery Mode to do this when ⌘Command + R with power on the PC.
# $ csrutil enable
# $ csrutil status

echo "Done"
