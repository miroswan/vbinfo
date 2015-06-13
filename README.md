# Vbinfo

Vagrant plugin for outputing detailed VirtualBox information

## Example 

```shell
vagrant vbinfo 

Name:            vbinfo_default_1434072204704_57376
Groups:          /
Guest OS:        Ubuntu (64 bit)
UUID:            18a5ed14-08ec-497e-a6cf-d0a54a0e74d2
Config file:     /Users/demitri/VirtualBox VMs/vbinfo_default_1434072204704_57376/vbinfo_default_1434072204704_57376.vbox
Snapshot folder: /Users/demitri/VirtualBox VMs/vbinfo_default_1434072204704_57376/Snapshots
Log folder:      /Users/demitri/VirtualBox VMs/vbinfo_default_1434072204704_57376/Logs
Hardware UUID:   18a5ed14-08ec-497e-a6cf-d0a54a0e74d2
Memory size:     384MB
Page Fusion:     off
VRAM size:       8MB
CPU exec cap:    100%
HPET:            off
Chipset:         piix3
Firmware:        BIOS
Number of CPUs:  2
PAE:             on
Long Mode:       on
Synthetic CPU:   off
CPUID overrides: None
Boot menu mode:  message and menu
Boot Device (1): HardDisk
Boot Device (2): DVD
Boot Device (3): Not Assigned
Boot Device (4): Not Assigned
ACPI:            on
IOAPIC:          on
Time offset:     0ms
RTC:             UTC
Hardw. virt.ext: on
Nested Paging:   on
Large Pages:     on
VT-x VPID:       on
VT-x unr. exec.: on
State:           powered off (since 2015-06-12T01:25:13.000000000)
Monitor count:   1
3D Acceleration: off
2D Video Acceleration: off
Teleporter Enabled: off
Teleporter Port: 0
Teleporter Address:
Teleporter Password:
Tracing Enabled: off
Allow Tracing to Access VM: off
Tracing Configuration:
Autostart Enabled: off
Autostart Delay: 0
Default Frontend:
Storage Controller Name (0):            IDE Controller
Storage Controller Type (0):            PIIX4
Storage Controller Instance Number (0): 0
Storage Controller Max Port Count (0):  2
Storage Controller Port Count (0):      2
Storage Controller Bootable (0):        on
Storage Controller Name (1):            SATA Controller
Storage Controller Type (1):            IntelAhci
Storage Controller Instance Number (1): 0
Storage Controller Max Port Count (1):  30
Storage Controller Port Count (1):      1
Storage Controller Bootable (1):        on
IDE Controller (0, 0): Empty
IDE Controller (1, 0): Empty
SATA Controller (0, 0): /Users/demitri/VirtualBox VMs/vbinfo_default_1434072204704_57376/box-disk1.vmdk (UUID: 604b749c-9eb0-4d37-8a1b-dc795b210dcb)
NIC 1:           MAC: 080027880CA6, Attachment: NAT, Cable connected: on, Trace: off (file: none), Type: 82540EM, Reported speed: 0 Mbps, Boot priority: 0, Promisc Policy: deny, Bandwidth group: none
NIC 1 Settings:  MTU: 0, Socket (send: 64, receive: 64), TCP Window (send:64, receive: 64)
NIC 1 Rule(0):   name = ssh, protocol = tcp, host ip = 127.0.0.1, host port = 2222, guest ip = , guest port = 22
NIC 2:           disabled
NIC 3:           disabled
NIC 4:           disabled
NIC 5:           disabled
NIC 6:           disabled
NIC 7:           disabled
NIC 8:           disabled
Pointing Device: PS/2 Mouse
Keyboard Device: PS/2 Keyboard
UART 1:          disabled
UART 2:          disabled
LPT 1:           disabled
LPT 2:           disabled
Audio:           disabled
Clipboard Mode:  disabled
Drag'n'drop Mode: disabled
VRDE:            disabled
USB:             disabled
EHCI:            disabled

USB Device Filters:

<none>

Available remote USB devices:

<none>

Currently Attached USB Devices:

<none>

Bandwidth groups:  <none>

Shared folders:

Name: 'vagrant', Host path: '/Users/demitri/Ruby/vbinfo' (machine mapping), writable

VRDE Connection:    not active
Clients so far:     0

Video capturing:    not active
Capture screens:    0
Capture file:       /Users/demitri/VirtualBox VMs/vbinfo_default_1434072204704_57376/vbinfo_default_1434072204704_57376.webm
Capture dimensions: 1024x768
Capture rate:       512 kbps
Capture FPS:        25

Guest:

Configured memory balloon size:      0 MB
```