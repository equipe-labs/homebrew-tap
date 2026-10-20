cask "equipe" do
  version "0.83.2"
  sha256 "22f3e288ba565bc00795ef09dc4e22e6406bb7dd84a205ea5dba1f34804f0556"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.83.2/equipe.dmg"
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
