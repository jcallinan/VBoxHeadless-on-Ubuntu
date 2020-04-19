# from: https://www.zealfortechnology.com/2012/06/install-oracle-virtualbox-on-fedora.html
# using: https://archives.fedoraproject.org/pub/archive/fedora/linux/releases/16/Live/x86_64/
#First, you need to download the repository file from:
#http://download.virtualbox.org/virtualbox/rpm/fedora/virtualbox.repo


#Then you need to move the file "virtualbox.repo" to the folder /etc/yum.repos.d/. In the terminal, navigate to the location where you kept the file and use the command:
sudo mv virtualbox.repo /etc/yum.repos.d/


#Then you need to install dkms as follows:
sudo yum install dkms


#To install the latest version of VirtualBox use the command:
sudo yum install VirtualBox-4.1
#Note: The package name was change from virtualbox-4.1 to VirtualBox-4.1


#If you prefer the older version of VirtualBox just change the version number such as:
sudo yum install virtualbox-3.2
sudo yum install virtualbox-3.1
sudo yum install virtualbox-3.0


# alternate from: https://linuxize.com/post/how-to-install-virtualbox-on-centos-7/

sudo yum install kernel-devel kernel-headers make patch gcc


sudo wget https://download.virtualbox.org/virtualbox/rpm/el/virtualbox.repo -P /etc/yum.repos.d
sudo yum install VirtualBox-5.2


# alternate from: https://www.if-not-true-then-false.com/2010/install-virtualbox-with-yum-on-fedora-centos-red-hat-rhel/
cd /etc/yum.repos.d/

## Fedora 31/30/29/28 users
wget http://download.virtualbox.org/virtualbox/rpm/fedora/virtualbox.repo

## CentOS 8.0/7.7 and Red Hat (RHEL) 8.0/7.7 users
wget http://download.virtualbox.org/virtualbox/rpm/rhel/virtualbox.repo
#3. Update latest packages and check your kernel version
# Update packages

## Fedora 31/30/29/28 and CentOS/RHEL 8 ##
dnf update

## CentOS/RHEL 7 ##
yum update

## CentOS 8 and RHEL 8 ##
dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm

## CentOS 7 and RHEL 7 ##
rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
## Fedora 31/30/29/28 ##
dnf install binutils gcc make patch libgomp glibc-headers glibc-devel kernel-headers kernel-devel dkms qt5-qtx11extras libxkbcommon

## CentOS/RHEL 8 ##
dnf install binutils gcc make patch libgomp glibc-headers glibc-devel kernel-headers kernel-devel dkms

## CentOS/RHEL 7 ##
yum install binutils gcc make patch libgomp glibc-headers glibc-devel kernel-headers kernel-devel dkms
## Fedora 31/30/29/28/27 ##
dnf install VirtualBox-6.1

## CentOS/RHEL 8 ##
dnf install VirtualBox-6.1

## CentOS/RHEL 7 ##
yum install VirtualBox-6.1

## Fedora 31/30/29/28 and CentOS/RHEL 8/7 ##
/usr/lib/virtualbox/vboxdrv.sh setup

usermod -a -G vboxusers user_name

VirtualBox

# one more alternate: https://computingforgeeks.com/how-to-install-virtualbox-on-fedora-linux/


# Let’s start by installing Development Tools required for building VirtualBox Linux kernel modules on Fedora.

sudo dnf -y install @development-tools
sudo dnf -y install kernel-headers kernel-devel dkms elfutils-libelf-devel qt5-qtx11extras
#Step 2: Add VirtualBox RPM repository
# The latest VirtualBox packages are available on the RPM repository provided by VirtualBox development. Add it to your Fedora system using below command.

cat <<EOF | sudo tee /etc/yum.repos.d/virtualbox.repo 
[virtualbox]
name=Fedora $releasever - $basearch - VirtualBox
baseurl=http://download.virtualbox.org/virtualbox/rpm/fedora/29/\$basearch
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://www.virtualbox.org/download/oracle_vbox.asc
EOF
# Step 3: Import VirtualBox GPG Key
# After adding the repository, import the GPG key used for signing packages.

sudo dnf search virtualbox

# Lastly, install VirtualBox 6 on Fedora 30/29/28.

sudo dnf install VirtualBox-6.1
# Step 5: Add your user to the vboxusers group
# The vboxusers group is created automatically during installation. Add your user account to this group to operate VirtualBox without sudo.


Sudo usermod -a -G vboxusers $USER
newgrp vboxusers

# To launch it from the terminal, run:
virtualbox
 # http://download.virtualbox.org/virtualbox/rpm/fedora/29/x86_64/VirtualBox-5.2-5.2.24_128163_fedora29-1.x86_64.rpm

 # http://download.virtualbox.org/virtualbox/rpm/fedora/29/x86_64/