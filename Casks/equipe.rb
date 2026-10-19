cask "equipe" do
  version "0.76.1"
  sha256 "bdae94fbfcb034fdc901f8e24d54fb4e5342175c6168ef7a5a2d3894a820c925"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.76.1/equipe.dmg"
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
