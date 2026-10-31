cask "equipe" do
  version "0.98.0"
  sha256 "5400eedd8fbe1763c98349c9424222fbe92035846ebdacdd14d714b23bf2c1e3"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.98.0/equipe.dmg"
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
