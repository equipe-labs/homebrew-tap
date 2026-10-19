cask "equipe" do
  version "0.71.3"
  sha256 "45ac5297506bbac6053b75deba3e7724bd2fb0235afbb2f1c94ef6a96cb52500"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.71.3/equipe.dmg"
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
