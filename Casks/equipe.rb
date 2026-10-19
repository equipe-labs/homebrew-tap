cask "equipe" do
  version "0.64.1"
  sha256 "eb085ccce7c98cf076f4c52e37baed4e185494d0da7c482f5b93a323e50a11de"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.64.1/equipe.dmg"
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
