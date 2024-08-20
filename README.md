# Linux - Hardening
This project is a collection of scripts to enhance the security and harden a Linux System.
The script automates time consuming tasks such as configuring a firewall, installing antivirus software, application permissions, etc.

## Getting Started

1) Clone the repository
```bash
git clone https://https://www.github.com/WHS-CyberPatriots/Linux-Hardening.git
cd Linux-Hardening/
```

2) Run the setup.sh script to initialize the file permissions
```bash
chmod +x ./setup.sh
./setup.sh
```

3) Login to the root user, as this script requires sudo privileges.
```bash
sudo su
```

4) Run the main.sh script to run the collection of security tools
```bash
./main.sh
```

## Application
When running the `main.sh` script, be aware that it will prompt you for each programmed module.

If you would like to run the specified module, type either `yes` or `y`.
If you would not like to run the specified module, press enter, type `no`, or type `n`.

## Notice
This repository will **NOT** get you all `one hundred` points.
By constantly updating your checklist and adding to this repository, you can increase your chances of making it to nationals.

This collection of tools provide basic security measures for Linux, and should **NOT** be relied upon heavily.
