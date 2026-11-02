# Homebrew tap: vibe-check

```sh
brew tap gaurav-dhakal/vibe-check
brew install vibe-check
```

Prebuilt binaries from [vibe-check releases](https://github.com/gaurav-dhakal/vibe-check/releases)
for macOS and Linux (arm64 + amd64). Installs two names: `vibe-check` and the shorter `vcheck`.

## Bumping the version

When a new release ships, update `Formula/vibe-check.rb`:

1. `version "<x.y.z>"` (and the tag prefix stays `v`).
2. Replace the four `sha256` values with the ones from the release's `checksums.txt`:
   `curl -fsSL https://github.com/gaurav-dhakal/vibe-check/releases/download/v<x.y.z>/checksums.txt`

Then verify locally: `brew audit --strict Formula/vibe-check.rb` (needs `brew tap-new` deps, or just
`brew install --formula --HEAD`… plain `brew install` from the tap is the real test).
