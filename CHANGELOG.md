# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.2.2] - 2022-02-27
### Added
- Install packages necessary to install PacketFence
- Install GPG key for EL
- Set up cluster requirements

## [1.2.1] - 2021-10-29
### Changed
- Use identical permissions for Fingerbank as in packaging

## [1.2.0] - 2021-09-06

### Changed
- Use new repository layout
- Support for RHEL8
- Improve wpasupplicant config files
- Change PF key installation for Debian

## [1.1.1] - 2021-06-24

### Changed
- Don't display content of config files
- Always restart packetfence-config service when a change is detected

## [1.1.0] - 2020-09-22

### Changed
- Only manage DB and configuration when configurator is disabled
- Manage network using ifupdown on Debian hosts

### Removed
- Venom role has been moved to [utils collection](https://github.com/inverse-inc/ansible-utils)

## [1.0.3] - 2020-07-21

### Added
- [wpasupplicant] Allow to manage state of wpa_supplicant service

## [1.0.2] - 2020-05-01

### Changed
- Use new variable for CentOS repositories in `packetfence_go`

## [1.0.1] - 2020-04-15

### Changed
- Disable configurator using new setting (#17)
- Start and restart services at end of package installation (#25)
- CentOS repositories are now a list in place of a dict (#28)

### Added
- New wpasupplicant role (#18)
- New venom role (#19)
- Configuration of any files under /usr/local/pf/conf using inventory (#20)
- Dedicated playbooks to easily use collections (#24)
- New right for default user in DB needed by `pfacct`
- Disable systemd-resolved to let `pfdns` start (when using libvirt) (#25)
- Install kernel development package to build Netflow kernel module (#27)

### Removed
- Ability to configure PacketFence using API calls, need to go in specific
  Ansible modules ((#20)
- Ability to modify admin password in DB (#20)
- Disable of NetworkManager on EL installation (#25)

## [0.4.0] - 2019-12-23

### Added
- Configure Fingerbank API key through inventory
- Hide password of `pf` user in DB
- `packetfence_go` role to install Golang prerequisites for unit tests

### Removed
- Installation of `pfsql` binary in `/usr/local/pf/bin`

## [0.3.0] - 2019-11-25

### Added
- Install latest packages if devel repos enabled (#12)

### Changed
- Update defaults to reflect packaging changes introduced by PacketFence
  v9.2.0 (#13)

[Unreleased]: https://github.com/inverse-inc/ansible-packetfence/compare/v1.2.2...HEAD
[1.2.2]: https://github.com/inverse-inc/ansible-packetfence/compare/v1.2.1...v1.2.2
[1.2.1]: https://github.com/inverse-inc/ansible-packetfence/compare/v1.2.0...v1.2.1
[1.2.0]: https://github.com/inverse-inc/ansible-packetfence/compare/v1.1.1...v1.2.0
[1.1.1]: https://github.com/inverse-inc/ansible-packetfence/compare/v1.1.0...v1.1.1
[1.1.0]: https://github.com/inverse-inc/ansible-packetfence/compare/v1.0.3...v1.1.0
[1.0.3]: https://github.com/inverse-inc/ansible-packetfence/compare/v1.0.2...v1.0.3
[1.0.2]: https://github.com/inverse-inc/ansible-packetfence/compare/v1.0.1...v1.0.2
[1.0.1]: https://github.com/inverse-inc/ansible-packetfence/compare/v0.4.0...v1.0.1
[0.4.0]: https://github.com/inverse-inc/ansible-packetfence/compare/v0.3.0...v0.4.0
[0.3.0]: https://github.com/inverse-inc/ansible-packetfence/compare/v0.2.0...v0.3.0
