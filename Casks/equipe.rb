cask "equipe" do
  arch arm: "arm64", intel: "x86_64"

  version "0.103.150"
  sha256 arm:   "044646e0b370ca370782b6fc771651193ebf3e1535617434df33e711a03fb8d1",
         intel: "df550d5d6bc08057f4cf1944fdd528d9435fa07f7e66ab6329594445612bd4b4"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.150/equipe-#{arch}.dmg"
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
