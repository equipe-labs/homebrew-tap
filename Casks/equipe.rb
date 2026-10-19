cask "equipe" do
  version "0.63.0"
  sha256 "e28235f0ed2f868a0774037760eaba9c1d89f5250ae29de50236b831342d78e8"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.63.0/equipe.dmg"
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
