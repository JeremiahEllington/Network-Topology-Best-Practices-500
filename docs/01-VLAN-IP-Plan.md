# VLAN and IP Address Plan

## Principles
- Segment by function, sensitivity, and blast radius
- Reserve dedicated VLANs for management, voice, servers, storage, and guest
- Use consistent subnet sizes with headroom (e.g., /23 for access user VLANs)
- Reserve non-overlapping RFC1918 ranges for site expansion

## Suggested VLANs (example)
- VLAN 10: User-Workstations (HQ-Floor1) — 10.10.10.0/23, GW .1
- VLAN 20: User-Workstations (HQ-Floor2) — 10.10.12.0/23, GW .1
- VLAN 30: Voice (HQ) — 10.10.30.0/24, GW .1, DHCP with Option 66
- VLAN 40: Servers — 10.10.40.0/23, GW .1
- VLAN 50: Storage — 10.10.50.0/24, GW .1
- VLAN 60: Management (OOB/In-band) — 10.10.60.0/24, GW .1
- VLAN 70: WLAN Corp — 10.10.70.0/23, GW .1
- VLAN 80: WLAN Guest — 10.10.80.0/24, captive portal
- VLAN 90: Printers/IoT — 10.10.90.0/24, restricted egress
- VLAN 100: DMZ — 10.10.100.0/24

## DHCP/DNS
- Central DHCP (HA) with IP helpers on SVIs
- DNS split-horizon, AD-integrated for internal, public for DMZ

## Routing
- L3 at core; dynamic routing (OSPF/ECMP) between core and firewalls/edges
- Summarize per building/site where possible

Document your actual plan in `templates/ip-plan.csv` and `templates/vlans.csv`.
