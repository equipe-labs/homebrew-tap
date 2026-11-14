cask "equipe" do
  version "0.103.110"
  sha256 "525de31a4225113b9b21029f143c8a89585eb182013f58c785589885bd62bef5"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.110/equipe.dmg"
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
