# Servers and Virtualization

- 3-4 host virtualization cluster (vSphere/Hyper-V) with vMotion/Live Migration
- Separate networks: Management, vMotion/LM, Storage, VM traffic
- Storage: iSCSI/NFS with dedicated VLANs and jumbo frames (where supported)
- Backup: 3-2-1 strategy; offsite or cloud immutable storage
- Management: OOB (iLO/DRAC), jump host, bastion
