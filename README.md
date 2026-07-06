# vars-cli Homebrew tap

Homebrew formulae for [`vars`](https://github.com/vars-cli/vars), an encrypted
store for your environment variables.

## Install

```sh
brew install vars-cli/tap/vars
```

Or tap first, then install:

```sh
brew tap vars-cli/tap
brew install vars
```

## How this tap is maintained

`Formula/vars.rb` is generated and pushed automatically. On every `vX.Y.Z` tag in
[`vars-cli/vars`](https://github.com/vars-cli/vars), the release workflow builds
the cross-platform archives with GoReleaser and runs `scripts/update-formula.sh`,
which renders the formula from the release checksums and commits it here. Don't
edit `Formula/vars.rb` by hand: the next release overwrites it.
