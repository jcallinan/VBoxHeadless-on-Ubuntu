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


