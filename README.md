# Homebrew Tap for SiliconRefinery

This repository is the Homebrew tap for the SiliconRefinery toolchain.

It currently distributes:

- `silicon-refinery`: the command-line interface
- `silicon-refinery-chat`: the standalone macOS application

## Who This Is For

Use this tap if you want to install SiliconRefinery from Homebrew instead of building from source or downloading release artifacts manually.

## Installation

Tap the repository and install the packages you need:

```bash
brew tap adpena/silicon-refinery https://github.com/adpena/homebrew-silicon-refinery
brew install silicon-refinery
brew install --cask silicon-refinery-chat
```

Launch the app:

```bash
open -a SiliconRefineryChat
```

Or, if the cask exposes a CLI shim on your machine:

```bash
silicon-refinery-chat
```

## Upgrade

To refresh Homebrew metadata and upgrade installed packages:

```bash
brew update
brew upgrade silicon-refinery
brew upgrade --cask silicon-refinery-chat
```

## Uninstall

```bash
brew uninstall silicon-refinery
brew uninstall --cask silicon-refinery-chat
brew untap adpena/silicon-refinery
```

## Repository Layout

- `Formula/`: Homebrew formulae for CLI packages
- `Casks/`: Homebrew casks for packaged GUI applications

## Maintainer Notes

This tap is intended to stay small, deterministic, and release-driven.

When publishing a new release:

1. Build and publish the release artifacts in the upstream project.
2. Regenerate or update the formula/cask definitions in this repository.
3. Commit the updated package metadata.
4. Verify installation from a clean Homebrew environment before announcing the release.

## Troubleshooting

If Homebrew is still pointing at stale metadata:

```bash
brew update-reset
brew update
```

If you need to inspect the installed package metadata:

```bash
brew info silicon-refinery
brew info --cask silicon-refinery-chat
```
