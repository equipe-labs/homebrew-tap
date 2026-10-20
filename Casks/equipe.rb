cask "equipe" do
  version "0.85.1"
  sha256 "c660d25f5f8b65c0d19711a486df935282c32cf248598bea3c8276ad96e9f49f"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.85.1/equipe.dmg"
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
