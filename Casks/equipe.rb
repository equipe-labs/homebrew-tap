cask "equipe" do
  version "0.86.3"
  sha256 "4ebb3befcfa3acaeab7a7df25f29e065cb21e48d14596d135f06cd738d44c665"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.86.3/equipe.dmg"
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
