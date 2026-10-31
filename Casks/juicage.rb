cask "juicage" do
  version "1.9.3"
  sha256 "512284f57b4a0fc9cc4248e49e1e1638c0991b4605f41e3c37f96cc6acd763fe"

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
