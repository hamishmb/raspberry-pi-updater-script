# Raspberry Pi Updater Script

A simple Raspberry Pi updater script I created to be run by cron for easy automatic updates and housekeeping.

This script expects you to be running Raspbian/Raspberry Pi OS, and will not upgrade you to new major versions of Raspbian (eg upgrading from Jessie to Buster).

**NOTE:** I made this for my own convenience, and decided to share it here in case it's useful for anyone else. If at some point I don't need it, I make no prmise to maintain it and/or add new features.

Merge requests for features and fixes are welcome.

Features:
- Updates package indexes.
- Runs dist-upgrade -y.
- Autoremoves all candidate packages after the upgrade.
- Saves all the output to /var/log/autoupdate.log so it can be inspected until the next execution if anything goes wrong.

Known issues/deficiencies:
- Can autoremove modules for current running kernel (causes problems when running eg modprobe until a reboot).
- Doesn't rotate the log - it will be lost after the next execution.

How to use:
- Make executable and place somewhere safe.
- Add a job to CRON to run it as root when desired.
- Periodically check that everything is still okay and that updates are being installed.
- No arguments are needed, just run the script.

Various features could be added, but I'm unlikely to add them myself unless I need them for some reason. Please submit a merge request if you want new features.
