cask "equipe" do
  version "0.103.56"
  sha256 "d3fa2bc336859f8a55a276c905a0b97cf3fb725f20f601e9f5e481530ca1c968"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.56/equipe.dmg"
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
