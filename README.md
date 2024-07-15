# macstrap
basic sh scripts to configure new (personal) macs

## Install
The following is true as of MacOS 13.2.1

### Dev tools
Git doesn't come preinstalled. The follow steps ensure it's present on machine

1. Open `terminal`, run `git`
2. MacOS will prompt, install dev tools

## Manual steps
The following can't be programmatically set, and require manual configuration

### Github authentication
Gone are the days of authenticating your GitHub account with just git. Sign in and auth via the `gh` [cli tool](https://cli.github.com) with `gh auth`. `gh` is installed with macstrap.

### Remapping Capslock
One must manually change the capslock key to another within the system settings
