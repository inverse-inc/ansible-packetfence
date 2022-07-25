packetfence_install
===================

Install and manage a PacketFence instance with Ansible.

Role Variables
--------------

### defaults/main.yml ###

| Variable                                       | Default                                                                                        | Comments (type)                                                         |
| ---                                            | ---                                                                                            | ---                                                                     |
| `packetfence_install__centos['repos']`         | `[packetfence]`                                                                                | List of CentOS repos to use                                             |
| `packetfence_install__centos_release_pkg`      | `packetfence-release`                                                                          | Package containing CentOS repo                                          |
| `packetfence_install__centos_release_rpm`      | `"http://packetfence.org/downloads/PacketFence/RHEL8/packetfence-release-11.0.el8.noarch.rpm"` | URL to install `centos_release_pkg`                                     |
| `packetfence_install__centos_packages`         | `[packetfence]`                                                                                | List of CentOS packages to install, `packetfence-8.3` syntax allowed    |
| `packetfence_install__centos_python_mysql_pkg` | `python3-PyMySQL`                                                                              | CentOS package to use Ansible mysql_user module                         |
| `packetfence_install__deb['repos']`            | `[debian/11.0]`                                                                                | List of Debian repos to use                                             |
| `packetfence_install__deb_inverse_key_id`      | B022C48D3D6373D7FC256A8CCB2D3A2AA0030E2C                                                       | GPG key use to sign Debian packages                                     |
| `packetfence_install__deb_sources_dir`         | `/etc/apt/sources.list.d`                                                                      | Directory to store packetfence.list                                     |
| `packetfence_install__deb_packages`            | `[packetfence]`                                                                                | List of Debian packages to install, `packetfence=8.3` syntax allowed    |
| `packetfence_install__shell_rc_file`           | `/root/.bashrc`                                                                                | File where to add common PacketFence aliases                            |
| `packetfence_install__database_host`           | `localhost`                                                                                    | Database host, if external to Packetfence server
| `packetfence_install__database_db`             | `pf`                                                                                           | Database name                                                           |
| `packetfence_install__database_root_user`      | `root`                                                                                         | `root` user of DB                                                       |
| `packetfence_install__database_root_pass`      | `secret`                                                                                       | Default database password for `packetfence_install__database_root_user` |
| `packetfence_install__database_pass`           | `secret`                                                                                       | Default database password for first database users                      |
| `packetfence_install__database_default_user`   | `pf`                                                                                           | Default database user                                                   |
| `packetfence_install__database_users`          | See `defaults/main.yml`                                                                        | Dict of database users with their privileges                            |
| `packetfence_install__database_socket`         | Distribution specific, see `vars/` dir                                                         | Local socket to use                                                     |
| `packetfence_install__configurator_status`     | `disabled`                                                                                     | Status of configurator setting                                          |
| `packetfence_install__mgmt_interface`          | `ansible_default_ipv4` settings + `type: management`                                           | Dict with settings for management interface settings                    |
| `packetfence_install__configuration`           | See `defaults/main.yml`                                                                        | List of INI config files with their configuration                       |
| `packetfence_install__pkg_state`               | See `defaults/main.yml`                                                                        | State of PacketFence packages to install                                |
| `packetfence_install__cluster`                 | See `defaults/main.yml`                                                                        | Type of deployment                                                      |

### `packetfence_install__configuration` variable

This variable need to be overwrite **completely** in inventory if you want to
add settings different than defaults.

Example Playbook
----------------

See
[master playbook to deploy
PacketFence](https://github.com/nqb/ansible-playbook-inverse-deployment/blob/master/products/packetfence/site.yml)
and [default inventory](https://github.com/nqb/ansible-playbook-inverse-deployment/blob/master/products/packetfence/inventory).

License
-------

GPL-3.0

Author Information
------------------

Inverse inc. <info@inverse.ca>
