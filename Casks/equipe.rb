cask "equipe" do
  version "0.103.100"
  sha256 "97c1ca47cafe544c845f8880d9e61cad981a8517b652390996bf97162468543c"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.100/equipe.dmg"
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
