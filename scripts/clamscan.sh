# Written by: Christopher Gholmieh
# Sources:

# Utilities:
. ./utilities/packages.sh
. ./utilities/prompter.sh

# Functions:
function main() {
    if [[ $(is_package_installed "clamav") == "0" ]]; then
        apt install clamav
    fi

    if [[ $(is_package_installed "clamtk") == "0" ]]; then
        apt install clamtk
    fi

    if [[ $(prompt "Would you like to run a recursive scan on the entire system for viruses? This might take a while.. [y/N]: ") == "1" ]]; then
        freshclam

        clamscan --recursive=yes --infected --bell /
    fi
}


# Main:
main