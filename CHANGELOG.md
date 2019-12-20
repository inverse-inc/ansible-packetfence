# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- Configure Fingerbank API key through inventory
- Hide password of `pf` user in DB
- `packetfence_go` role to install Golang prerequisites for unit tests

### Changed

### Removed
- Installation of `pfsql` binary in `/usr/local/pf/bin`

## [0.3.0] - 2019-11-25

### Added
- Install latest packages if devel repos enabled (#12)

### Changed
- Update defaults to reflect packaging changes introduced by PacketFence
  v9.2.0 (#13)

[Unreleased]: https://github.com/inverse-inc/ansible-packetfence/compare/v0.3.0...HEAD
[0.3.0]: https://github.com/inverse-inc/ansible-packetfence/compare/v0.2.0...v0.3.0
