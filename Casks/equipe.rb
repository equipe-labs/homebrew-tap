cask "equipe" do
  arch arm: "arm64", intel: "x86_64"

  version "0.103.143"
  sha256 arm:   "111be9cd0433eb6446012ee262da03a99fe18068a24d03224437d35c3ff7abbf",
         intel: "895061572b0e04dbd62af067b00329030f97ce7496acdcab3dd0b71c10c7e543"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.143/equipe-#{arch}.dmg"
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
