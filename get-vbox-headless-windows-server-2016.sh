# from: https://www.howtoforge.com/vboxheadless-running-virtual-machines-with-virtualbox-4.1-on-a-headless-ubuntu-12.04-server

sudo vi /etc/apt/sources.list
deb http://download.virtualbox.org/virtualbox/debian precise contrib
 wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add -
sudo apt-get update
sudo apt install linux-headers-generic

sudo apt-get install linux-headers-$(uname -r) 
sudo apt-get install build-essential 
sudo apt-get install virtualbox
sudo apt-get install dkms
cd /tmp
wget http://download.virtualbox.org/virtualbox/4.1.18/Oracle_VM_VirtualBox_Extension_Pack-4.1.18-78361.vbox-extpack
sudo VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-4.1.18-78361.vbox-extpack
sudo adduser jcallinan vboxusers


VBoxManage --help

# making new vm
VBoxManage createvm --name "Windows Server Standard 2016" --register

VBoxManage modifyvm "Windows Server Standard 2016" --memory 512 --acpi on --boot1 dvd --nic1 bridged --bridgeadapter1 eth0

VBoxManage createhd --filename Windows_Server_Standard_2016.vdi --size 10000
VBoxManage storagectl "Windows Server Standard 2016" --name "IDE Controller" --add ide
VBoxManage storageattach "Windows Server Standard 2016" --storagectl "IDE Controller" --port 0 --device 0 --type hdd --medium Windows_Server_Standard_2016.vdi

# VBoxManage storageattach "Windows Server Standard 2016" --storagectl "IDE Controller" --port 1 --device 0 --type dvddrive --medium /home/ubuntu-12.04-server-amd64.iso



# importing existing

VBoxManage registervm Machines/examplevm/examplevm.xml
VBoxHeadless --startvm "Windows Server Standard 2016"
VBoxManage controlvm "Windows Server Standard 2016" poweroff
VBoxManage controlvm "Windows Server Standard 2016" pause
VBoxManage controlvm "Windows Server Standard 2016" reset
VBoxHeadless --help

# http://www.virtualbox.org/manual/ch07.html#vboxheadless

cd /tmp
wget http://download.virtualbox.org/virtualbox/4.1.18/Oracle_VM_VirtualBox_Extension_Pack-4.1.18-78361.vbox-extpack
sudo VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-4.1.18-78361.vbox-extpack



# PS Hyper-V local network - https://www.itechtics.com/share-files-between-guest-host-hyper-v/