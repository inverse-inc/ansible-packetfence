# Role Name

Install and manage a PacketFence instance with Ansible.

# Requirements

See Dependencies section below.

# Role Variables

### RedHat

| Variable                | Default                                  | Comments (type)                                                      |
| ---                     | ---                                      | ---                                                                  |
| `centos['repo']`        | `packetfence`                            | CentOS repo to use                                                   |
| `centos_pf_release_pkg` | `packetfence-release`                    | Package containing CentOS repo                                       |
| `centos_pf_release_rpm` | `"http://packetfence.org/downloads/PacketFence/RHEL7/x86_64/RPMS/{{ centos_pf_release_pkg }}-1.2-7.el7.noarch.rpm"` | URL to install `centos_pf_release_pkg` |
| `centos_pf_packages`    | `[packetfence,packetfence-ntlm-wrapper]` | List of CentOS packages to install, `packetfence-8.3` syntax allowed |
| `deb['repos']`          | `[debian]`                               | List of Debian repos to use                                          |
| `deb_sources_dir`       | `/etc/apt/sources.list.d`                | Directory to store packetfence.list                                  |
| `deb_pf_packages`       | `[packetfence]`                          | List of Debian packages to install, `packetfence=8.3` syntax allowed |
| `pf_database_db`        | `pf`                                     | Database name                                                        |
| `pf_database_root_user` | `root`                                   | `root` user of DB                                                    |
| `pf_database_root_pass` | `secret`                                 | Default password for `pf_database_root_user`                         |
| `pf_database_pass`      | `secret`                                 | Default password for `pf` user                                       |
| `pf_database_users`     | FIXME                                    | FIXME                                                                |
| `pf_database_socket`    | Distribution specific, see `vars/` dir   | Local socket to use                                                  |
| `pf_interfaces`         | FIXME                                    | List of network interfaces to configure in PacketFence               |
| `pf_admin_user`         | `{pid: admin, password: secret }`        | Dict with username and password for default admin user               |
| `shell_rc_file`         | `/root/.bashrc`                          | File where to add common PacketFence aliases                         |
| `pf_root_dir`           | `/usr/local/pf`                          | Root dir of PacketFence install                                      |
| `pf_conf_dir`           | `{{ pf_root_dir }}/conf`                 |                                                                      |
| `pf_bin_dir`            | `{{ pf_root_dir }}/bin`                  |                                                                      |
| `pf_sbin_dir`           | `{{ pf_root_dir }}/sbin`                 |                                                                      |
| `pf_db_dir`             | `{{ pf_root_dir }}/db`                   |                                                                      |
| `pf_currently_at_file`  | `{{ pf_conf_dir }}/currently-at`         | File to set current PF version after install or upgrade              |
| `pf_pfcmd`              | `{{ pf_bin_dir }}/pfcmd`                 | `pfcmd` command                                                      |
| `pf_perlapi_cmd`        | `{{ pf_sbin_dir }}/pfperl-api`           | `pfperl-api` command                                                 |
| `pf_user`               | `pf`                                     | `pf` UNIX user                                                       |
| `pf_group`              | `pf`                                     | `pf` UNIX group                                                      |
| `pf_webadmin_port`      | `1443`                                   | Listening port for web admin                                         |
| `pf_api_base_path`      | `/api/v1`                                | Base path for REST API                                               |
|                         |                                          |                                                                      |


# Dependencies

Role pf.common

# Example Playbook


```yaml
---
- hosts: pfservers
  roles:
     - pf.install
     vars:
       pf_database_root_user: root
       pf_database_root_pass: mysecretpassword
       pf_database_pass: anothersecretpassword
```

# License


GPL v2.0

# Author Information


Inverse inc. <info@inverse.ca>
