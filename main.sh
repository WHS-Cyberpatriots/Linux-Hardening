# Written by: Christopher Gholmieh
# Sources:

# Utilities:
. ./utilities/prompter.sh

# Functions:
function main() {
    if [[ "$EUID" != "0" ]]; then
        echo "[-] Please rerun this script as root."
        
        exit
    fi

    if [[ $(prompt "Would you like to update all the system packages? [y/N]: ") == "1" ]]; then
        apt update && apt upgrade
    fi

    if [[ $(prompt "Would you like to run the uncomplicated-firewall script? [y/N]: ") == "1" ]]; then
        bash ./scripts/uncomplicated-firewall.sh
    fi

    if [[ $(prompt "Would you like to run the apparmor script? [y/N]: ") == "1" ]]; then
        bash ./scripts/apparmor.sh
    fi

    if [[ $(prompt "Would you like to run the clamscan script? [y/N]: ") == "1" ]]; then
        bash ./scripts/clamscan.sh
    fi

    if [[ $(prompt "Would you like to run the rkhunter script? [y/N]: ") == "1" ]]; then
        bash ./scripts/rkhunter.sh
    fi

    if [[ $(prompt "Would you like to run the baseline command? If yes, check the files listed as they have been changed and might contain suspicious entries.. [y/N]: ") == "1" ]]; then
        dpkg -V
    fi
}


# Main:
main