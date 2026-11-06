cask "equipe" do
  version "0.103.58"
  sha256 "33b0f1dfd91a0f6d14d491e56f35e8313ebf5effaccaad8da22c88d1f3dc799b"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.58/equipe.dmg"
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
