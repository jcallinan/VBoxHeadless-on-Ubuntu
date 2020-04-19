# On Linux, the autostart service is activated by setting two variables in /etc/default/virtualbox. The first one is VBOXAUTOSTART_DB which contains an absolute path to the autostart database directory. The directory should have write access for every user who should be able to start virtual machines automatically. Furthermore the directory should have the sticky bit set. The second variable is VBOXAUTOSTART_CONFIG which points the service to the autostart configuration file which is used during boot to determine whether to allow individual users to start a VM automatically and configure startup delays. The configuration file can be placed in /etc/vbox and contains several options. One is default_policy which controls whether the autostart service allows or denies to start a VM for users which are not in the exception list. The exception list starts with exception_list and contains a comma separated list with usernames. Furthermore a separate startup delay can be configured for every user to avoid overloading the host. A sample configuration is given below:

# Default policy is to deny starting a VM, the other option is "allow".
default_policy = deny

# Bob is allowed to start virtual machines but starting them
# will be delayed for 10 seconds
bob = {
    allow = true
    startup_delay = 10
}

# Alice is not allowed to start virtual machines, useful to exclude certain users
# if the default policy is set to allow.
alice = {
    allow = false
}
# Any user who wants to enable autostart for individual machines must set the path to the autostart database directory with the following command:

VBoxManage setproperty autostartdbpath autostart-directory

# from: virtualbox.org/manual/ch09.html#autostart