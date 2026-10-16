cask "equipe" do
  version "0.49.0"
  sha256 "f1e2c4d62e4486d9e8ef86d677232cdc78d0c1feb383783d5880cb814338bd6c"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.49.0/equipe.dmg"
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
