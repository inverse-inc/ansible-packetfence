packetfence_install
===================

Install and manage a PacketFence instance with Ansible.

Role Variables
--------------

### defaults/main.yml ###

| Variable                                       | Default                                                                                                          | Comments (type)                                                         |
| ---                                            | ---                                                                                                              | ---                                                                     |
| `packetfence_install__centos['repo']`          | `packetfence`                                                                                                    | CentOS repo to use                                                      |
| `packetfence_install__centos_release_pkg`      | `packetfence-release`                                                                                            | Package containing CentOS repo                                          |
| `packetfence_install__centos_release_rpm`      | `"http://packetfence.org/downloads/PacketFence/RHEL7/x86_64/RPMS/{{ centos_release_pkg }}-1.2-7.el7.noarch.rpm"` | URL to install `centos_release_pkg`                                     |
| `packetfence_install__centos_packages`         | `[packetfence]`                                                                                                  | List of CentOS packages to install, `packetfence-8.3` syntax allowed    |
| `packetfence_install__centos_python_mysql_pkg` | `python2-PyMySQL`                                                                                                | CentOS package to use Ansible mysql_user module                         |
| `packetfence_install__deb['repos']`            | `[debian]`                                                                                                       | List of Debian repos to use                                             |
| `packetfence_install__deb_inverse_key_id`      | B022C48D3D6373D7FC256A8CCB2D3A2AA0030E2C                                                                         | GPG key use to sign Debian packages                                     |
| `packetfence_install__deb_sources_dir`         | `/etc/apt/sources.list.d`                                                                                        | Directory to store packetfence.list                                     |
| `packetfence_install__deb_packages`            | `[packetfence]`                                                                                                  | List of Debian packages to install, `packetfence=8.3` syntax allowed    |
| `packetfence_install__shell_rc_file`           | `/root/.bashrc`                                                                                                  | File where to add common PacketFence aliases                            |
| `packetfence_install__database_db`             | `pf`                                                                                                             | Database name                                                           |
| `packetfence_install__database_root_user`      | `root`                                                                                                           | `root` user of DB                                                       |
| `packetfence_install__database_root_pass`      | `secret`                                                                                                         | Default database password for `packetfence_install__database_root_user` |
| `packetfence_install__database_pass`           | `secret`                                                                                                         | Default database password for first database users                      |
| `packetfence_install__database_users`          | See `defaults/main.yml`                                                                                          | Dict of database users with their privileges                            |
| `packetfence_install__database_socket`         | Distribution specific, see `vars/` dir                                                                           | Local socket to use                                                     |
| `packetfence_install__mgmt_interface`          | `ansible_default_ipv4` settings + `type: management`                                                             | Dict with settings for management interface settings                    |
| `packetfence_install__admin_user`              | `{pid: admin, password: secret }`                                                                                | Dict with username and password for default admin user                  |
| `packetfence_install__admin_credentials`       | Credentials of default admin user                                                                                | Dict with username and password use to authenticate against API         |

### inventory variables ###

If this variables are not defined, this role will not fail.

#### packetfence_install__api_calls ####

List of API calls to make to configure PacketFence.

With this variable, you can configure all API items that don't need an
additional API call after, example: `/api/v1/config/base`

#### packetfence_install__users ####

List of users to create on PacketFence.

#### packetfence_install__sources ####

List of authentication sources to create on PacketFence.

### vars/ dir ###

Check <vars/> dir.


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
