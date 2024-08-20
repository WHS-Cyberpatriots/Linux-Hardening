# Written by: Christopher Gholmieh
# Sources:

# Functions:
function is_package_installed() {
    if dpkg -s "$1" > /dev/null 2>&1; then
        echo "1"
    else
        echo "0"
    fi
}