cask "equipe" do
  version "0.103.16"
  sha256 "4eef2fb3db193a56e2f4aea1974f896962b982159b93ac334fc83a0830bc0322"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.16/equipe.dmg"
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
