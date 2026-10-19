cask "equipe" do
  version "0.69.1"
  sha256 "9eb3e501780de77af84b883725c4e3cd1f34e0e1da20b94807cbd61f7b85184a"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.69.1/equipe.dmg"
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
