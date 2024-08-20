# Written by: Christopher Gholmieh
# Sources:

# Utilities:
. ./utilities/packages.sh
. ./utilities/prompter.sh

# Functions:
function rkhunter() {
    if [[ $(is_package_installed "rkhunter") == "0" ]]; then
        apt install rkhunter
    fi

    if [[ $(prompt "Would you like to check for potential rootkits? This could take a while.. [y/N]: ") == "1" ]]; then
        rkhunter --update
        rkhunter --check
    fi
}


# Main:
main