# Vbinfo

Vagrant plugin for outputing detailed VirtualBox information

## Example 

```
vagrant vbinfo 

{
  "default": {
    "name": "vbinfo_default_1434072204704_57376",
    "groups": "/",
    "ostype": "Ubuntu (64 bit)",
    "UUID": "18a5ed14-08ec-497e-a6cf-d0a54a0e74d2",
    "CfgFile": "/Users/demitri/VirtualBox VMs/vbinfo_default_1434072204704_57376/vbinfo_default_1434072204704_57376.vbox",
    "SnapFldr": "/Users/demitri/VirtualBox VMs/vbinfo_default_1434072204704_57376/Snapshots",
    "LogFldr": "/Users/demitri/VirtualBox VMs/vbinfo_default_1434072204704_57376/Logs",
    "hardwareuuid": "18a5ed14-08ec-497e-a6cf-d0a54a0e74d2",
    "memory": "384",
    "pagefusion": "off",
    "vram": "8",
    "cpuexecutioncap": "100",
    "hpet": "off",
    "chipset": "piix3",
    "firmware": "BIOS",
    "cpus": "2",
    "pae": "on",
    "longmode": "on",
    "synthcpu": "off",
    "bootmenu": "messageandmenu",
    "boot1": "disk",
    "boot2": "dvd",
    "boot3": "none",
    "boot4": "none",
    "acpi": "on",
    "ioapic": "on",
    "biossystemtimeoffset": "0",
    "rtcuseutc": "on",
    "hwvirtex": "on",
    "nestedpaging": "on",
    "largepages": "on",
    "vtxvpid": "on",
    "vtxux": "on",
    "VMState": "poweroff",
    "VMStateChangeTime": "2015-06-12T01:25:13.000000000",
    "monitorcount": "1",
    "accelerate3d": "off",
    "accelerate2dvideo": "off",
    "teleporterenabled": "off",
    "teleporterport": "0",
    "teleporteraddress": "",
    "teleporterpassword": "",
    "tracing-enabled": "off",
    "tracing-allow-vm-access": "off",
    "tracing-config": "",
    "autostart-enabled": "off",
    "autostart-delay": "0",
    "defaultfrontend": "",
    "storagecontrollername0": "IDE Controller",
    "storagecontrollertype0": "PIIX4",
    "storagecontrollerinstance0": "0",
    "storagecontrollermaxportcount0": "2",
    "storagecontrollerportcount0": "2",
    "storagecontrollerbootable0": "on",
    "storagecontrollername1": "SATA Controller",
    "storagecontrollertype1": "IntelAhci",
    "storagecontrollerinstance1": "0",
    "storagecontrollermaxportcount1": "30",
    "storagecontrollerportcount1": "1",
    "storagecontrollerbootable1": "on",
    "IDE Controller-0-0": "emptydrive",
    "IDE Controller-IsEjected": "off",
    "IDE Controller-0-1": "none",
    "IDE Controller-1-0": "emptydrive",
    "IDE Controller-1-1": "none",
    "SATA Controller-0-0": "/Users/demitri/VirtualBox VMs/vbinfo_default_1434072204704_57376/box-disk1.vmdk",
    "SATA Controller-ImageUUID-0-0": "604b749c-9eb0-4d37-8a1b-dc795b210dcb",
    "natnet1": "nat",
    "macaddress1": "080027880CA6",
    "cableconnected1": "on",
    "nic1": "nat",
    "nictype1": "82540EM",
    "nicspeed1": "0",
    "mtu": "0",
    "sockSnd": "64",
    "sockRcv": "64",
    "tcpWndSnd": "64",
    "tcpWndRcv": "64",
    "Forwarding(0)": "ssh,tcp,127.0.0.1,2222,,22",
    "nic2": "none",
    "nic3": "none",
    "nic4": "none",
    "nic5": "none",
    "nic6": "none",
    "nic7": "none",
    "nic8": "none",
    "hidpointing": "ps2mouse",
    "hidkeyboard": "ps2kbd",
    "uart1": "off",
    "uart2": "off",
    "lpt1": "off",
    "lpt2": "off",
    "audio": "none",
    "clipboard": "disabled",
    "draganddrop": "disabled",
    "vrde": "off",
    "usb": "off",
    "ehci": "off",
    "SharedFolderNameMachineMapping1": "vagrant",
    "SharedFolderPathMachineMapping1": "/Users/demitri/Ruby/vbinfo",
    "VRDEActiveConnection": "off",
    "VRDEClients": "0",
    "vcpenabled": "off",
    "vcpscreens": "0",
    "vcpfile": "/Users/demitri/VirtualBox VMs/vbinfo_default_1434072204704_57376/vbinfo_default_1434072204704_57376.webm",
    "vcpwidth": "1024",
    "vcpheight": "768",
    "vcprate": "512",
    "vcpfps": "25",
    "GuestMemoryBalloon": "0"
  },
  "one": {
    "name": "vbinfo_one_1434259191541_64114",
    "groups": "/",
    "ostype": "Ubuntu (64 bit)",
    "UUID": "cbe57111-e8a5-4132-8d5d-a908a94d5ea6",
    "CfgFile": "/Users/demitri/VirtualBox VMs/vbinfo_one_1434259191541_64114/vbinfo_one_1434259191541_64114.vbox",
    "SnapFldr": "/Users/demitri/VirtualBox VMs/vbinfo_one_1434259191541_64114/Snapshots",
    "LogFldr": "/Users/demitri/VirtualBox VMs/vbinfo_one_1434259191541_64114/Logs",
    "hardwareuuid": "cbe57111-e8a5-4132-8d5d-a908a94d5ea6",
    "memory": "512",
    "pagefusion": "off",
    "vram": "8",
    "cpuexecutioncap": "100",
    "hpet": "off",
    "chipset": "piix3",
    "firmware": "BIOS",
    "cpus": "2",
    "pae": "on",
    "longmode": "on",
    "synthcpu": "off",
    "bootmenu": "messageandmenu",
    "boot1": "disk",
    "boot2": "dvd",
    "boot3": "none",
    "boot4": "none",
    "acpi": "on",
    "ioapic": "on",
    "biossystemtimeoffset": "0",
    "rtcuseutc": "on",
    "hwvirtex": "on",
    "nestedpaging": "on",
    "largepages": "on",
    "vtxvpid": "on",
    "vtxux": "on",
    "VMState": "running",
    "VMStateChangeTime": "2015-06-15T04:13:09.720000000",
    "monitorcount": "1",
    "accelerate3d": "off",
    "accelerate2dvideo": "off",
    "teleporterenabled": "off",
    "teleporterport": "0",
    "teleporteraddress": "",
    "teleporterpassword": "",
    "tracing-enabled": "off",
    "tracing-allow-vm-access": "off",
    "tracing-config": "",
    "autostart-enabled": "off",
    "autostart-delay": "0",
    "defaultfrontend": "",
    "storagecontrollername0": "IDE Controller",
    "storagecontrollertype0": "PIIX4",
    "storagecontrollerinstance0": "0",
    "storagecontrollermaxportcount0": "2",
    "storagecontrollerportcount0": "2",
    "storagecontrollerbootable0": "on",
    "storagecontrollername1": "SATA Controller",
    "storagecontrollertype1": "IntelAhci",
    "storagecontrollerinstance1": "0",
    "storagecontrollermaxportcount1": "30",
    "storagecontrollerportcount1": "1",
    "storagecontrollerbootable1": "on",
    "IDE Controller-0-0": "emptydrive",
    "IDE Controller-IsEjected": "off",
    "IDE Controller-0-1": "none",
    "IDE Controller-1-0": "emptydrive",
    "IDE Controller-1-1": "none",
    "SATA Controller-0-0": "/Users/demitri/VirtualBox VMs/vbinfo_one_1434259191541_64114/box-disk1.vmdk",
    "SATA Controller-ImageUUID-0-0": "a2dc82fe-2fcd-4bc9-ab42-732ea078b735",
    "natnet1": "nat",
    "macaddress1": "080027880CA6",
    "cableconnected1": "on",
    "nic1": "nat",
    "nictype1": "82540EM",
    "nicspeed1": "0",
    "mtu": "0",
    "sockSnd": "64",
    "sockRcv": "64",
    "tcpWndSnd": "64",
    "tcpWndRcv": "64",
    "Forwarding(0)": "ssh,tcp,127.0.0.1,2222,,22",
    "nic2": "none",
    "nic3": "none",
    "nic4": "none",
    "nic5": "none",
    "nic6": "none",
    "nic7": "none",
    "nic8": "none",
    "hidpointing": "ps2mouse",
    "hidkeyboard": "ps2kbd",
    "uart1": "off",
    "uart2": "off",
    "lpt1": "off",
    "lpt2": "off",
    "audio": "none",
    "clipboard": "disabled",
    "draganddrop": "disabled",
    "SessionType": "headless",
    "VideoMode": "640,480,32@0,0",
    "vrde": "off",
    "usb": "off",
    "ehci": "off",
    "SharedFolderNameMachineMapping1": "vagrant",
    "SharedFolderPathMachineMapping1": "/Users/demitri/Ruby/vbinfo",
    "VRDEActiveConnection": "off",
    "VRDEClients": "0",
    "vcpenabled": "off",
    "vcpscreens": "0",
    "vcpfile": "/Users/demitri/VirtualBox VMs/vbinfo_one_1434259191541_64114/vbinfo_one_1434259191541_64114.webm",
    "vcpwidth": "1024",
    "vcpheight": "768",
    "vcprate": "512",
    "vcpfps": "25",
    "GuestMemoryBalloon": "0",
    "GuestOSType": "Linux26_64",
    "GuestAdditionsRunLevel": "2",
    "GuestAdditionsVersion": "4.2.0 r80737",
    "GuestAdditionsFacility_VirtualBox Base Driver": "50,1434261400268",
    "GuestAdditionsFacility_VirtualBox System Service": "50,1434261400622",
    "GuestAdditionsFacility_Seamless Mode": "0,1434261400268",
    "GuestAdditionsFacility_Graphics Mode": "0,1434261400268"
  },
  "two": {
    "name": "vbinfo_two_1434259208158_79380",
    "groups": "/",
    "ostype": "Ubuntu (64 bit)",
    "UUID": "2b1b7947-9dca-4690-97a0-5f35b102a643",
    "CfgFile": "/Users/demitri/VirtualBox VMs/vbinfo_two_1434259208158_79380/vbinfo_two_1434259208158_79380.vbox",
    "SnapFldr": "/Users/demitri/VirtualBox VMs/vbinfo_two_1434259208158_79380/Snapshots",
    "LogFldr": "/Users/demitri/VirtualBox VMs/vbinfo_two_1434259208158_79380/Logs",
    "hardwareuuid": "2b1b7947-9dca-4690-97a0-5f35b102a643",
    "memory": "1024",
    "pagefusion": "off",
    "vram": "8",
    "cpuexecutioncap": "100",
    "hpet": "off",
    "chipset": "piix3",
    "firmware": "BIOS",
    "cpus": "2",
    "pae": "on",
    "longmode": "on",
    "synthcpu": "off",
    "bootmenu": "messageandmenu",
    "boot1": "disk",
    "boot2": "dvd",
    "boot3": "none",
    "boot4": "none",
    "acpi": "on",
    "ioapic": "on",
    "biossystemtimeoffset": "0",
    "rtcuseutc": "on",
    "hwvirtex": "on",
    "nestedpaging": "on",
    "largepages": "on",
    "vtxvpid": "on",
    "vtxux": "on",
    "VMState": "running",
    "VMStateChangeTime": "2015-06-15T04:13:09.759000000",
    "monitorcount": "1",
    "accelerate3d": "off",
    "accelerate2dvideo": "off",
    "teleporterenabled": "off",
    "teleporterport": "0",
    "teleporteraddress": "",
    "teleporterpassword": "",
    "tracing-enabled": "off",
    "tracing-allow-vm-access": "off",
    "tracing-config": "",
    "autostart-enabled": "off",
    "autostart-delay": "0",
    "defaultfrontend": "",
    "storagecontrollername0": "IDE Controller",
    "storagecontrollertype0": "PIIX4",
    "storagecontrollerinstance0": "0",
    "storagecontrollermaxportcount0": "2",
    "storagecontrollerportcount0": "2",
    "storagecontrollerbootable0": "on",
    "storagecontrollername1": "SATA Controller",
    "storagecontrollertype1": "IntelAhci",
    "storagecontrollerinstance1": "0",
    "storagecontrollermaxportcount1": "30",
    "storagecontrollerportcount1": "1",
    "storagecontrollerbootable1": "on",
    "IDE Controller-0-0": "emptydrive",
    "IDE Controller-IsEjected": "off",
    "IDE Controller-0-1": "none",
    "IDE Controller-1-0": "emptydrive",
    "IDE Controller-1-1": "none",
    "SATA Controller-0-0": "/Users/demitri/VirtualBox VMs/vbinfo_two_1434259208158_79380/box-disk1.vmdk",
    "SATA Controller-ImageUUID-0-0": "70f30c03-193f-48ba-950e-fd4719086c1f",
    "natnet1": "nat",
    "macaddress1": "080027880CA6",
    "cableconnected1": "on",
    "nic1": "nat",
    "nictype1": "82540EM",
    "nicspeed1": "0",
    "mtu": "0",
    "sockSnd": "64",
    "sockRcv": "64",
    "tcpWndSnd": "64",
    "tcpWndRcv": "64",
    "Forwarding(0)": "ssh,tcp,127.0.0.1,2200,,22",
    "nic2": "none",
    "nic3": "none",
    "nic4": "none",
    "nic5": "none",
    "nic6": "none",
    "nic7": "none",
    "nic8": "none",
    "hidpointing": "ps2mouse",
    "hidkeyboard": "ps2kbd",
    "uart1": "off",
    "uart2": "off",
    "lpt1": "off",
    "lpt2": "off",
    "audio": "none",
    "clipboard": "disabled",
    "draganddrop": "disabled",
    "SessionType": "headless",
    "VideoMode": "640,480,32@0,0",
    "vrde": "off",
    "usb": "off",
    "ehci": "off",
    "SharedFolderNameMachineMapping1": "vagrant",
    "SharedFolderPathMachineMapping1": "/Users/demitri/Ruby/vbinfo",
    "VRDEActiveConnection": "off",
    "VRDEClients": "0",
    "vcpenabled": "off",
    "vcpscreens": "0",
    "vcpfile": "/Users/demitri/VirtualBox VMs/vbinfo_two_1434259208158_79380/vbinfo_two_1434259208158_79380.webm",
    "vcpwidth": "1024",
    "vcpheight": "768",
    "vcprate": "512",
    "vcpfps": "25",
    "GuestMemoryBalloon": "0",
    "GuestOSType": "Linux26_64",
    "GuestAdditionsRunLevel": "2",
    "GuestAdditionsVersion": "4.2.0 r80737",
    "GuestAdditionsFacility_VirtualBox Base Driver": "50,1434261410798",
    "GuestAdditionsFacility_VirtualBox System Service": "50,1434261411209",
    "GuestAdditionsFacility_Seamless Mode": "0,1434261410798",
    "GuestAdditionsFacility_Graphics Mode": "0,1434261410798"
  }
}
```

## Development
* Fork project
* Create topic branch in your fork for a given patch/feature
* vagrant up && vagrant halt # this will give you data to work with
* Install RVM (if not installed)
* Create gemset for the patch/feature
* Activate rvm/gemset
* Install bundler (gem install --version 1.7.15 bundler) # It has to be before version 1.8 which is a vagrant dependency
* bundler install 
* bundler exec vagrant vbinfo 

If this works, you'll see json output for each configured VM in the Vagrantfile. When 
you're done with your patch/feature, submit a pull request, comparing your topic branch to 
the vbinfo develop branch. 

## To Do
* Execute on Windows and Linux to make sure it works
* Possibly write some tests