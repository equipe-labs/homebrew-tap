cask "equipe" do
  arch arm: "arm64", intel: "x86_64"

  version "0.103.136"
  sha256 arm:   "c7c5ac80d3c1c9a5bbd199a209cd5745101d3ea0baf853dc81fe980128ff9538",
         intel: "01e9a39954292fb88305c65f9ebb7272a8b4b14c8f4d462c5f9d590dcafeb234"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.136/equipe-#{arch}.dmg"
  name "equipe"
  desc "Desktop app for a squad of AI agents on your own Claude Code and Codex plans"
  homepage "https://equipe.im"

  auto_updates true
  depends_on macos: ">= :monterey"

  app "equipe.app"

  zap trash: [
    "~/Library/Caches/im.equipe.desktop",
    "~/Library/HTTPStorages/im.equipe.desktop",
    "~/Library/Preferences/im.equipe.desktop.plist",
    "~/Library/Saved Application State/im.equipe.desktop.savedState",
  ]
end
