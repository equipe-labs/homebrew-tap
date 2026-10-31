cask "equipe" do
  version "0.96.0"
  sha256 "61e199dcb36e7fbc53faaa5ca4124259e5a4b657560919737d6a148fb4048985"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.96.0/equipe.dmg"
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
