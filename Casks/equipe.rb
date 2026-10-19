cask "equipe" do
  version "0.71.4"
  sha256 "acd513b9e2efbd36a5363706fc7c16a9e676a5145fe173ef8a5896effb63cadb"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.71.4/equipe.dmg"
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
