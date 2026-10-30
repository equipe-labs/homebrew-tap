cask "equipe" do
  version "0.87.1"
  sha256 "0081ec574d2c3b46f62b3b07b5d7c7153034b4dba559b76612ec5a7a9ef2dd2f"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.87.1/equipe.dmg"
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
