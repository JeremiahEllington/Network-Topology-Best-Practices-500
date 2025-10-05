# Overview

This blueprint targets a ~500-user organization with the following goals:
- Availability: redundant core/distribution, dual WAN, HA firewall pair
- Security: network segmentation, least privilege ACLs, zero-trust friendly
- Performance: QoS for voice/video, proper capacity planning
- Operability: standardized naming, IP addressing, templates, and automation

Key building blocks:
- Core: L3 core switches (2x) with layer-3 routing and VRRP/HSRP
- Distribution/Access: Stacked access switches per floor/IDF
- Security: NGFW pair (active/standby), IDS/IPS optional
- WAN: Dual Internet + SD-WAN or policy-based routing
- WLAN: Controller-based APs, WPA2/3-Enterprise, separate SSIDs per role
- Servers/Virtualization: vSphere/Hyper-V cluster, iSCSI/NFS storage, OOB management

Proceed to VLAN/IP plan in `01-VLAN-IP-Plan.md`.
