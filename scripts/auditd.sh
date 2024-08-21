# Written by: Christopher Gholmieh
# Sources:

# Utilities:
. ./utilities/packages.sh
. ./utilities/prompter.sh

# Functions:
function main() {
    if [[ $(is_package_installed "auditd") == "0" ]]; then
        apt install auditd
    fi

    if [[ $(is_package_installed "audispd-plugins") == "0" ]]; then
        apt install audispd-plugins
    fi

    systemctl enable --now auditd
    auditctl -e 1
}


# Main:
main
