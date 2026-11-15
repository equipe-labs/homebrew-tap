cask "equipe" do
  version "0.103.121"
  sha256 "5a37e357e2f839ea64475ee30e47bcc65566a914a4f679f2e339bd9807e4f474"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.121/equipe.dmg"
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
