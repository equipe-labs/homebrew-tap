cask "equipe" do
  version "0.89.0"
  sha256 "a9eb14c6edcb82dac29ed52bc1860df5ae3d1c3c6ed1da79eed65e625deec2bf"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.89.0/equipe.dmg"
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
