cask "equipe" do
  version "0.103.109"
  sha256 "10952a39b4205ee7d42b0a17ab8dae97ee14b7e31c2aab0c6a85c326306cd222"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.109/equipe.dmg"
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
