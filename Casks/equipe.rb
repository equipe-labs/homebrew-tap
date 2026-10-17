cask "equipe" do
  version "0.59.1"
  sha256 "21e2d785be10f6787856b0c0d61b2ace2d912de2f7b91dda099523502b97f6e2"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.59.1/equipe.dmg"
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
