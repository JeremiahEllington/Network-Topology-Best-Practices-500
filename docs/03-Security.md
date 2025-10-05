# Security Architecture

## Segmentation & Policy
- Default deny between VLANs; allow by application/port as needed
- Dedicated management VLAN with ACLs limiting access to admin jump hosts
- Guest and IoT isolated; Internet-only with required exceptions

## Perimeter
- HA NGFW pair with IPS, SSL inspection (where legally allowed), URL filtering
- Dual ISPs with BGP or SD-WAN with failover

## East-West
- VLAN ACLs at SVI, and/or microsegmentation with NAC/host firewalls

## Identity & NAC
- 802.1X for wired/wireless; MAB for non-802.1X devices
- Dynamic VLAN assignment via RADIUS attributes

## Logging & Monitoring
- Central syslog/SIEM, NetFlow/IPFIX, SNMPv3/Telemetry
- Time sync via NTP, secure configs via RANCID/Oxidized/Git

## Hardening
- Disable unused ports, BPDU Guard, DHCP Snooping, Dynamic ARP Inspection
- Management via SSHv2/HTTPS only; no plaintext protocols
