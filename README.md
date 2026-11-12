# Remote Docker Host Port Forwarder — Homebrew tap

Install the Linux/macOS binary cask with Homebrew 7.0.11 or newer:

```sh
brew install --cask tomaszpeksa/tap/rdhpf
rdhpf version
```

The cask provides amd64 and arm64 binaries. macOS requires version 13 or newer.
Respect Homebrew's package-trust prompts and normal OS security checks. Unsigned
macOS downloads may be blocked; do not disable quarantine or Gatekeeper.

## Upgrade from the formula

Before starting v0.2.0, stop older instances sharing the same actual
`HOME/.rdhpf` directory. Read the
[v0.2.0 upgrade notes](https://github.com/tomaszpeksa/remote-docker-host-port-forwarder/blob/v0.2.0/CHANGELOG.md#upgrade-notes).

Both the former `rdhpf` formula and the legacy
`remote-docker-host-port-forwarder` formula migrate to the `rdhpf` cask:

```sh
brew update
brew upgrade rdhpf
brew list --cask rdhpf
rdhpf version
```

For the legacy formula, use its old name in the `brew upgrade` command.
Homebrew may retain the old formula unlinked. Remove it only after verifying
that the cask is installed and the version command works.

If automatic migration is unavailable, follow the explicit migration procedure
in the [Homebrew guide](https://github.com/tomaszpeksa/remote-docker-host-port-forwarder/blob/v0.2.0/docs/homebrew.md#migrating-from-the-formula).
For the legacy formula, substitute `remote-docker-host-port-forwarder` for `rdhpf`
in the formula uninstall command only. Keep `rdhpf` in the cask install command.

## Publishing

GoReleaser opens a pull request with the generated cask after publishing the
release archives. Review its URLs and checksums against the actual release
before merging. Do not publish snapshot URLs or bypass checksum verification.
