cask "equipe" do
  version "0.88.0"
  sha256 "46b7faa1391f47ec41328c5e4150cdaabf2931d3cd50a42b9b72888e7eb15e24"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.88.0/equipe.dmg"
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
