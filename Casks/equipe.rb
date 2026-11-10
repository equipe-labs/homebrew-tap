cask "equipe" do
  version "0.103.79"
  sha256 "fd994ffb32a8b6e242a54afe1c726644a1818556f2941dc6b89afa5dd6820fb7"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.79/equipe.dmg"
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
