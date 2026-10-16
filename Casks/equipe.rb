cask "equipe" do
  version "0.58.0"
  sha256 "ee88da3f309c3034f1d2d330882fdd590edee7292d469d9f850bbd4d2c13e41a"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.58.0/equipe.dmg"
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
