cask "equipe" do
  version "0.83.0"
  sha256 "378295622bfc9d6f4d7f822c0b7e36fa7be34b3764c71e78f8b283a0e441a2c0"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.83.0/equipe.dmg"
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
