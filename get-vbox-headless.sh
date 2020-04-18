# from: https://www.howtoforge.com/vboxheadless-running-virtual-machines-with-virtualbox-4.1-on-a-headless-ubuntu-12.04-server

sudo vi /etc/apt/sources.list
deb http://download.virtualbox.org/virtualbox/debian precise contrib
 wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add -
sudo apt-get update
sudo apt-get install linux-headers-$(uname -r) build-essential virtualbox-4.1 dkms
cd /tmp
wget http://download.virtualbox.org/virtualbox/4.1.18/Oracle_VM_VirtualBox_Extension_Pack-4.1.18-78361.vbox-extpack
sudo VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-4.1.18-78361.vbox-extpack
sudo adduser administrator vboxusers


VBoxManage --help

# making new vm
VBoxManage createvm --name "Ubuntu 12.04 Server" --register

VBoxManage modifyvm "Ubuntu 12.04 Server" --memory 512 --acpi on --boot1 dvd --nic1 bridged --bridgeadapter1 eth0

VBoxManage createhd --filename Ubuntu_12_04_Server.vdi --size 10000
VBoxManage storagectl "Ubuntu 12.04 Server" --name "IDE Controller" --add ide
VBoxManage storageattach "Ubuntu 12.04 Server" --storagectl "IDE Controller" --port 0 --device 0 --type hdd --medium Ubuntu_12_04_Server.vdi

VBoxManage storageattach "Ubuntu 12.04 Server" --storagectl "IDE Controller" --port 1 --device 0 --type dvddrive --medium /home/ubuntu-12.04-server-amd64.iso



# importing existing

VBoxManage registervm Machines/examplevm/examplevm.xml
VBoxHeadless --startvm "Ubuntu 12.04 Server"
VBoxManage controlvm "Ubuntu 12.04 Server" poweroff
VBoxManage controlvm "Ubuntu 12.04 Server" pause
VBoxManage controlvm "Ubuntu 12.04 Server" reset
VBoxHeadless --help

# http://www.virtualbox.org/manual/ch07.html#vboxheadless

