cask "equipe" do
  version "0.77.3"
  sha256 "3640315580dfa9c0cb5a255c42b95a8114d0c40a2a26ce16d89a807c5088952d"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.77.3/equipe.dmg"
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
