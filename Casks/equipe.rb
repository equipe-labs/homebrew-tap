cask "equipe" do
  version "0.103.20"
  sha256 "868cb4cdfd68b72242d5ff8e6f457be0cad44a60fec7fc3368b3805bad47d3db"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.20/equipe.dmg"
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
