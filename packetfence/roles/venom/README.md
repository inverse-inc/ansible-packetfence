# Ansible venom role

Install [Venom](https://github.com/ovh/venom) binary from Github

## Requirements

N/A

## Variables

See [defaults variables](defaults/main.yml)

## Examples

```
- name: install venom
  hosts: all
  collections:
  - inverse_inc.packetfence
  
  roles:
  - venom
```
