cask "equipe" do
  version "0.73.0"
  sha256 "dd491fc9e29308f5d20b05d85a0249904a18b9b6efbba200066c88edb52165a6"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.73.0/equipe.dmg"
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
