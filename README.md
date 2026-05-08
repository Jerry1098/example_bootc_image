# Installation

1. Install Fedora IOT, create user account
2. Run `sudo bootc switch ghcr.io/jerry1098/example_bootc_image:latest`
3. Run `sudo rpm-ostree reset`
4. Run `sudo bootc switch --enforce-container-sigpolicy ghcr.io/jerry1098/example_bootc_image:latest` (Not yet implementet)
5. Run `sudo systemctl reboot`
