cask "equipe" do
  version "0.87.0"
  sha256 "b7fbc46dbbea2dfe0111357bcd266af7d5f5ef78bb60504f42ed29980b6d4444"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.87.0/equipe.dmg"
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
