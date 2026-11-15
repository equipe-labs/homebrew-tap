cask "equipe" do
  version "0.103.123"
  sha256 "2e6735ca663d43b58d464067460c0a11c47cfc439d04920bbde42dc6d6ff24e6"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.123/equipe.dmg"
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
