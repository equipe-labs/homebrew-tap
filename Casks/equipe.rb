cask "equipe" do
  version "0.103.101"
  sha256 "990e88a1980fd693c1850948372145b1debe5ea811f25a687def883dd5f9dfd4"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.101/equipe.dmg"
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
