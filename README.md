# homebrew-juicage

A [Homebrew](https://brew.sh) tap for **[Juicage](https://github.com/ryanbarnett-2am/Juicage)** — an unofficial macOS menu bar app showing how much claude.ai usage you have left, plus a live indicator for local Ollama / LM Studio models.

```sh
brew install --cask ryanbarnett-2am/juicage/juicage
```

Updating:

```sh
brew upgrade --cask juicage
```

Juicage also updates itself in the background, so `brew upgrade` is optional — the cask is marked `auto_updates` and won't fight the app's own updater.

Requires macOS 13 (Ventura) or later. Universal (Apple Silicon and Intel).
