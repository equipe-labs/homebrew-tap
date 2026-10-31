cask "equipe" do
  version "0.99.1"
  sha256 "d8feff6f889fa011c396c06616999874d7caf0b501ccc4107d3a0b2471bfe480"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.99.1/equipe.dmg"
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
