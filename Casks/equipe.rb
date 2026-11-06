cask "equipe" do
  version "0.103.59"
  sha256 "273de22e628b0177fc3975dc8bec1079ffc38169180605a5f42dc9f9cf6689dd"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.59/equipe.dmg"
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
