# Network Topology Best Practices (~500 Users)

This repository provides a complete, vendor-neutral blueprint to design and document a secure, scalable network for a ~500-person business. It includes best practices, templates, diagrams, and sample configs you can hand to any vendor to implement.

## Scope
- HQ + optional branch offices
- ~500 employees, mixed Windows/macOS/Linux, VoIP, Wi-Fi, VPN/remote access
- Redundant core, resilient WAN, segmented VLANs, centralized security

## Contents
- `docs/` — Deep dives: VLAN/IP plan, naming, security, QoS/voice, WLAN, WAN/SD-WAN, servers/virtualization
- `templates/` — CSVs to capture IP plans, VLANs, port maps, firewall rules, QoS classes, naming, BoM
- `diagrams/` — Mermaid diagrams for high-level and detailed topologies
- `configs/` — Vendor-neutral and Cisco sample configs
- `scripts/` — PowerShell helpers (generate/validate plans)

Start with `docs/00-Overview.md`.

## License
MIT
