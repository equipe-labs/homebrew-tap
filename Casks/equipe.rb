cask "equipe" do
  version "0.103.88"
  sha256 "510c3153ae9d78fee01adedc2de5eddc965b5578b208f073b4a11d393bf37fcf"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.88/equipe.dmg"
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
