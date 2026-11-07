cask "equipe" do
  version "0.103.62"
  sha256 "d388251db2437d675829887f16be2d62a48543a1b1a123e517a486e2f7a4cd8c"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.62/equipe.dmg"
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
