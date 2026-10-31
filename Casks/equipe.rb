cask "equipe" do
  version "0.92.0"
  sha256 "ebd670785dd6e6ed48baeba3ef8c7a0ff6d590700de8f740db6f1e76444afd50"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.92.0/equipe.dmg"
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
