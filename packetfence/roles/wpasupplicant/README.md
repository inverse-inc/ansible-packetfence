# Ansible wpasupplicant role

Install `wpasupplicant` and generate configs based on templates.

## Requirements

N/A

## Variables

See [defaults variables](defaults/main.yml)

## Examples

```
- name: install and configure wpasupplicant
  hosts: nodes
  collections:
  - inverse_inc.packetfence
  
  roles:
  - wpasupplicant
```
