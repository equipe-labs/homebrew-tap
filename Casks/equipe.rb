cask "equipe" do
  version "0.60.0"
  sha256 "6ae5258812c57364baa6eddcbf5a003dd9fab3fb40995007df89b7bcc88bf186"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.60.0/equipe.dmg"
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
