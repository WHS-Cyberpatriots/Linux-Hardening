# Written by: Christopher Gholmieh
# Sources:

# Utilities:
. ./utilities/packages.sh
. ./utilities/prompter.sh

# Functions:
function main() {
    if [[ $(is_package_installd "ufw") == "0" ]]; then
        apt install ufw
    fi

    systemctl enable --now ufw
    ufw enable

    ufw allow in on lo
    ufw allow out on lo

    ufw deny in from 127.0.0.0/8
    ufw deny in from ::1

    ufw allow out https
    ufw allow out http

    ufw allow out ntp

    ufw logging on

    ufw default deny incoming
    ufw default deny outgoing
    ufw default deny routed

    systemctl restart ufw
}


# Main:
main