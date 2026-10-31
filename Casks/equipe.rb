cask "equipe" do
  version "0.100.0"
  sha256 "19e25e0dd48e192c4c26cf2f1a988cfb1f5e31c2c2b4d4996d2d79f66e7147fb"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.100.0/equipe.dmg"
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
