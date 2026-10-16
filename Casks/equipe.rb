cask "equipe" do
  version "0.59.0"
  sha256 "baaf2ee9429ca22ceca2ea545de81aa629785fd580f5e9a88ef4c7ee5557981a"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.59.0/equipe.dmg"
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
