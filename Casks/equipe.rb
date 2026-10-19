cask "equipe" do
  version "0.67.0"
  sha256 "1ce82dd6575670bba203d44c03c7a77461e3ae9f04a808cba956a31e16a3e418"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.67.0/equipe.dmg"
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
