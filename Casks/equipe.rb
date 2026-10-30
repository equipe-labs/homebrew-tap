cask "equipe" do
  version "0.91.0"
  sha256 "7a321cca29fcd43c8469efb4d0edc9e42a87abb616978771ae28cc517150a759"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.91.0/equipe.dmg"
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
