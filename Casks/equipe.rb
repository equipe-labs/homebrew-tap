cask "equipe" do
  version "0.83.1"
  sha256 "46f4adb6b68d3f6d86400f868fbcd64b1a8a52508217ba9bc1bfbe96a70c8931"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.83.1/equipe.dmg"
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
