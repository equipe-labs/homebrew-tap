cask "equipe" do
  version "0.103.82"
  sha256 "9a270e972658e0766be1044cf38ec4d48a2936a75fc2c080dd33eab238dea0a3"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.82/equipe.dmg"
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
