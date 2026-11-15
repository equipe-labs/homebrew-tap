cask "equipe" do
  version "0.103.124"
  sha256 "ebf0d557aa79b98742e7e97cc0326c66b68a26702a40cdb33dd00d23ad5c3bdf"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.124/equipe.dmg"
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
