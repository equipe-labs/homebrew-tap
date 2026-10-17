cask "equipe" do
  version "0.60.2"
  sha256 "04b113a04e9058086f843bae1a01c55980b1bcc7d81b70a495da75bf9ccfd4b9"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.60.2/equipe.dmg"
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
