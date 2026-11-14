cask "equipe" do
  version "0.103.116"
  sha256 "5705b9245e753582688affbd1ad163def99fd7f819540b9d80271a7a6a38bec3"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.116/equipe.dmg"
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
