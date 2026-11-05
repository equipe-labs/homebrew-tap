cask "equipe" do
  version "0.103.40"
  sha256 "9ebbc20c1995a17e849473ab60b543f9cded6d948e6a3aaba82ad1a6fa1ce6bd"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.40/equipe.dmg"
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
