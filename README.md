# Remote Docker Host Port Forwarder — Homebrew tap

Install the prebuilt binary formula for macOS or Linux:

```sh
brew install --formula tomaszpeksa/tap/rdhpf
rdhpf version
```

Go and local compilation are not required. The formula supports amd64 and arm64;
macOS requires version 13 or newer. Respect Homebrew's normal trust prompts.

## Upgrade

Before starting v0.2.0, stop older instances sharing the same actual
`HOME/.rdhpf` directory. Read the
[v0.2.0 upgrade notes](https://github.com/tomaszpeksa/remote-docker-host-port-forwarder/blob/main/CHANGELOG.md#upgrade-notes).

```sh
brew update
brew upgrade --formula tomaszpeksa/tap/rdhpf
rdhpf version
```

The legacy `remote-docker-host-port-forwarder` formula is not the current package.
Use `rdhpf` for new installations. Do not install both: they provide the same
command. See the [Homebrew guide](https://github.com/tomaszpeksa/remote-docker-host-port-forwarder/blob/main/docs/homebrew.md#upgrading)
for replacing the legacy installation.

## Packaging

If prebuilt-binary packaging causes installation or compatibility problems, the
fallback plan is to switch to a source-built formula. Homebrew would manage the
build tools and the recipe would fetch the pinned Go modules automatically;
users would not manage those dependencies manually. That fallback is not an
additional installation mode currently provided by this tap.

Release binaries are not Developer ID signed or notarized. No quarantine-removal
hooks or OS security overrides are provided. Report security blocks rather than
disabling those checks.

## Publishing

The formula is maintained separately from GoReleaser's GitHub archives. Update
its version, four URLs and checksums against the published release; verify the
archives, installation and `brew test` before pushing the reviewed tap change.
GitHub release publication does not automatically update this tap.
