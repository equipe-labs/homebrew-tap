cask "equipe" do
  version "0.103.120"
  sha256 "9dfc34bb040c7909fee2504f24b6e32577dca1c98fae17b3668018330d9e5d51"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.120/equipe.dmg"
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
