cask "equipe" do
  version "0.103.117"
  sha256 "4ff80f652048301a15ffb92407ad624a8499cb1b3926caa37f0c24868a4ae38e"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.117/equipe.dmg"
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
