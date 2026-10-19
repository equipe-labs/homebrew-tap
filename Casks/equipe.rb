cask "equipe" do
  version "0.77.1"
  sha256 "62ea6ba7e6f80afcd954d2587f038a317cd9eb8cc23113d394c1ab9883199686"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.77.1/equipe.dmg"
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
