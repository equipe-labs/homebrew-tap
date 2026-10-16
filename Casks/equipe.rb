cask "equipe" do
  version "0.56.0"
  sha256 "fea66ac92fd7473b2652033ccbe8b627128b282fe0a00b3e333fb67410fbf769"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.56.0/equipe.dmg"
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
