cask "equipe" do
  version "0.103.115"
  sha256 "e371212fa76a4db797a85321d11de99ffd40d2a85be428ac0a713aa7de0af313"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.115/equipe.dmg"
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
