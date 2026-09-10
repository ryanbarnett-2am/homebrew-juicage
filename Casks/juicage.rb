cask "juicage" do
  version "1.8.1"
  sha256 "c80e12c7461af3732c48d0a607721c796d76c33d5bf1b4eb4581589ff7589dd9"

  url "https://github.com/ryanbarnett-2am/Juicage/releases/download/v#{version}/Juicage-#{version}.dmg"
  name "Juicage"
  desc "Menu bar meter for claude.ai usage and local LLM activity"
  homepage "https://github.com/ryanbarnett-2am/Juicage"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Juicage updates itself through Sparkle, so Homebrew should report rather than
  # fight it — otherwise `brew upgrade` and the app's own updater race.
  auto_updates true
  depends_on macos: :ventura

  app "Juicage.app"

  # Keyed to the bundle identifier, which is still twoam.Tally by design: macOS
  # keys the saved claude.ai login to it, so it was left alone through the rename
  # from Tally to Juicage.
  zap trash: [
    "~/Library/Application Support/twoam.Tally",
    "~/Library/Caches/twoam.Tally",
    "~/Library/Containers/twoam.Tally",
    "~/Library/HTTPStorages/twoam.Tally",
    "~/Library/Preferences/twoam.Tally.plist",
    "~/Library/WebKit/twoam.Tally",
  ]
end
