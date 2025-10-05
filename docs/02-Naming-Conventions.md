# Naming Conventions

Consistent names improve clarity and automation.

## Devices
- Core: `HQ-CORE{1..2}`
- Distribution: `HQ-DIST-F{floor}-{A|B}`
- Access: `HQ-ACC-F{floor}-{stack}-{member}`
- Firewall: `HQ-FW{1..2}`
- Router/SD-WAN: `HQ-EDGE{1..2}`
- APs: `HQ-AP-F{floor}-{room}`
- Servers: `SRV-{role}-{seq}` (e.g., SRV-AD-01)
- VMs: `VM-{service}-{env}-{seq}` (e.g., VM-WEB-P-01)

## Interfaces/Ports
- Trunks: `TRK-{peer}`
- Access: `ACC-{vlan}`
- Port-channels: `PO{num}`

## VLANs
- `{SITE}-{FUNCTION}-{ID}` e.g., `HQ-USER-10`

## SSIDs
- `Corp-{site}` `Guest-{site}` `IoT-{site}`

## DNS
- `role-site.number.domain.tld` (e.g., `fw1.hq.corp.example.com`)
