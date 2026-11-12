cask "equipe" do
  version "0.103.92"
  sha256 "73efda1d6d2fbbb0ffbbccff0c11c03066f7f7811f64f05fa3f67ecf23481a37"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.92/equipe.dmg"
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
