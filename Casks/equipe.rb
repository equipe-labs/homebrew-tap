cask "equipe" do
  version "0.103.11"
  sha256 "b9192ac13a21729f1127c90aa8dc0d22d0ceb0671534ffdb2791fd928167edc5"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.11/equipe.dmg"
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
