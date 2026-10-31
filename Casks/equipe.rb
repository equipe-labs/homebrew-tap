cask "equipe" do
  version "0.100.2"
  sha256 "b436da3e7409501b383239c505d83f015d2975b1cecaf925ca4d1438a56e3231"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.100.2/equipe.dmg"
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
