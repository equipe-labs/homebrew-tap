cask "equipe" do
  version "0.103.24"
  sha256 "180aa48692be301213e1a0606c8e60d2efd37706504ba8efcbbdc6a6379596fd"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.24/equipe.dmg"
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
