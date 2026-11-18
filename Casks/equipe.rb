cask "equipe" do
  arch arm: "arm64", intel: "x86_64"

  version "0.103.141"
  sha256 arm:   "d6ce7d51924c7f6d1accb029ac3f982ab06e486741d63a9090823b055d133192",
         intel: "8376453acbadc1690231f8479167fa18000acce0efa52a54157bd1b4c7d0650b"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.141/equipe-#{arch}.dmg"
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
