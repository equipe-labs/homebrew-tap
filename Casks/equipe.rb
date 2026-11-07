cask "equipe" do
  version "0.103.63"
  sha256 "095031ee8853dec3b7179979bd4ee4e6d4e738abbdaf929f09cbedf12ad9b04d"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.63/equipe.dmg"
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
