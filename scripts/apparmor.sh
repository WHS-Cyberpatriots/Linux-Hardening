# Written by: Christopher Gholmieh
# Sources:

# Utilities:
. ./utilities/packages.sh
. ./utilities/prompter.sh

# Functions:
function main() {
    if [[ $(is_package_installed "apparmor") == "0" ]]; then
        apt install apparmor
    fi

    if [[ $(is_package_installed "apparmor-utils") == "0" ]]; then
        apt install apparmor-utils
    fi

    systemctl enable --now apparmor
    aa-enforce /etc/apparmor.d/*
}


# Main:
main