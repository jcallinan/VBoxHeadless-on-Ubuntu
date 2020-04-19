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