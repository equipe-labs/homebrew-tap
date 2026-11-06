cask "equipe" do
  version "0.103.51"
  sha256 "921cff202e9fee093499030e316c7f6e3417e6de67eb5b6ca24c183be5b7df4c"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.51/equipe.dmg"
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
