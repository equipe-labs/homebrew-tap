cask "equipe" do
  version "0.103.6"
  sha256 "a23fd4fee528096a6b24a6b4039592e04334b96c8880b61265aa203ac46d24e3"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.6/equipe.dmg"
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
