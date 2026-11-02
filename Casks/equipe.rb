cask "equipe" do
  version "0.103.7"
  sha256 "d0ad94b30088836cb1582663ee77d159fbf3b72d825ec3c7f6ee8bd4b4882758"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.7/equipe.dmg"
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
