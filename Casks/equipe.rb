cask "equipe" do
  version "0.80.0"
  sha256 "e123fda2f4bfb80b02268000bd48f15c312d8d88a27a5adba4d9d136ee42f954"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.80.0/equipe.dmg"
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
