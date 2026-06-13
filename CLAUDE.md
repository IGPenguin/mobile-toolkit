# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What This Is

A collection of shell scripts for controlling Android and iOS devices/emulators/simulators from the terminal. No build step — scripts are executable bash files added to `$PATH`.

## Linting

Shellcheck runs in CI on every push (`.github/workflows/shellcheck.yml`). To run it locally:

```bash
shellcheck android/<script> ios/<script> common_tools
```

Disabled rules (match CI): `SC1090`, `SC2207`, `SC2001`, `SC1091`

## Testing

No automated test suite. Testing is manual and requires a connected device or running emulator/simulator.

To test a single script, run it directly:

```bash
# Android (requires ADB device connected or emulator running)
./android/ascreenshot
./android/ascreenshot -a   # all devices

# iOS (requires physical device paired via go-ios, or simulator)
./ios/iscreenshot
./ios/iscreenshot -a        # all devices
```

## Architecture

```
android/          # 31 bash scripts — ADB-based Android device control
ios/              # 14 bash scripts — go-ios based iOS device control
common_tools      # Shared bash library sourced by all scripts
~/.local/state/mobile-toolkit/  # Runtime state: device lists, metadata, appledb cache
```

### Script Pattern

Every script follows this structure:

```bash
#!/bin/bash
LOCATION=$(dirname "$0")
source "$LOCATION"/../common_tools

# script logic here
```

### `common_tools` Library

The central shared library. Key functions:

- `android_choose_device` / `ios_choose_device` — interactive or automatic device selection
- `android_device_info` / `ios_device_info` — fetch device metadata
- `check_dependency <tool>` — verify a tool (adb, jq, go-ios, etc.) is installed
- `check_for_update` — daily `git fetch`/`git pull` auto-update trigger

### Android vs iOS

| | Android | iOS |
|---|---|---|
| Core tool | `adb` (Android Debug Bridge) | `go-ios` (cross-platform) |
| Screen control | `scrcpy` | Simulator-specific APIs |
| JSON parsing | `jq` | `jq` |

### Multi-device Support

Most scripts accept `-a` (all devices) or `-d <udid>` flags. When multiple devices are connected and no flag is passed, the script prompts for interactive selection.

## Contribution Guidelines (from CONTRIBUTING.md)

- Test every code change and all usage variants before submitting
- Follow the existing script format and emoji-based terminal output style
- Update README.md with any new commands or changed behavior
- Update `changelog.txt` with your changes
