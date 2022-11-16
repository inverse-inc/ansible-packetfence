## rc-local

Manages rc.local in Debian-like systems.

#### Requirements

None

#### Variables

* `rc_local_commands`: [default: `[]`]: Commands to add to `rc.local`

#### Dependencies

None

#### Example

##### Simple

```yaml
---
- hosts: all
  roles:
    - rc-local
```

##### Advanced

```yaml
---
- hosts: all
  roles:
    - rc-local
  vars:
    rc_local_commands:
      - |
          # transparen hugepage
          if test -f /sys/kernel/mm/transparent_hugepage/enabled; then
            echo never > /sys/kernel/mm/transparent_hugepage/enabled;
          fi
          if test -f /sys/kernel/mm/transparent_hugepage/defrag; then
            echo never > /sys/kernel/mm/transparent_hugepage/defrag;
          fi
      - |
          # something else
```

#### License

MIT

#### Author Information

* Mischa ter Smitten
* Inverse inc. <info@inverse.ca>
