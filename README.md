# Perimtr Homebrew tap

Homebrew packages for [Perimtr](https://perimtr.io) apps.

## PowerMate

Brings the Griffin PowerMate USB knob back to life on modern macOS:
volume, media keys, per-app profiles, full LED control.
[Source and release notes](https://github.com/perimtr/powermate).

```sh
brew install --cask perimtr/tap/powermate
```

Then launch it once from Spotlight or `open -a PowerMate`, and tick
**Start at Login** in its menu (or the Settings window) to keep it there.

Upgrade and uninstall:

```sh
brew upgrade --cask powermate
brew uninstall --cask powermate          # add --zap to remove settings too
```

The app is signed with the Perimtr LLC Developer ID and notarized by
Apple, so it installs without Gatekeeper warnings.

## About this tap

`Casks/powermate.rb` tracks the latest GitHub release. A scheduled
workflow follows new releases and updates the version and checksum here,
so `brew upgrade` picks them up on its own.

MIT licensed, like the apps it packages.
