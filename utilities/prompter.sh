# Written by: Christopher Gholmieh
# Sources:

# Functions:
function prompt() {
    read -p "$1" response

    if [[ "${response//[[:space:]]/}" == "yes" || "${response//[[:space:]]/}" == "y" ]]; then
        echo "1"
    else
        echo "0"
    fi
}