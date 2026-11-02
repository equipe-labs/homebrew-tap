cask "equipe" do
  version "0.103.5"
  sha256 "dd1910bac4ba1de71bff70534380b6b6de24526e32dc249066239bf2781df262"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.5/equipe.dmg"
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
