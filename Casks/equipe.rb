cask "equipe" do
  version "0.77.0"
  sha256 "ae81e2d8182f6fcca85d2b01b8750a014fd2d838ce31f07eb81c6c9dbaef1efc"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.77.0/equipe.dmg"
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
