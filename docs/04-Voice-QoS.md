# Voice and QoS

## VLAN & DHCP
- Dedicated voice VLAN; DHCP Option 66/150 as required by handsets

## QoS Markings
- DSCP EF (46) for VoIP RTP; CS3/AF31 for call signaling
- Trust markings at access when phones mark correctly; remark otherwise

## Queuing & Policing
- Priority queue for EF; bandwidth guarantees for AF classes
- Shape/police at WAN edges; avoid oversubscription

## Survivability
- SRST or cloud-fallback; power redundancy (PoE budgets, UPS)
