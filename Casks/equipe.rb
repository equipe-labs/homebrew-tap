cask "equipe" do
  version "0.60.3"
  sha256 "129e6548b13592ff73ac9b2e156252af0df503999540a29508ae8f73f7db9807"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.60.3/equipe.dmg"
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
