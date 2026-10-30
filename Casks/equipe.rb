cask "equipe" do
  version "0.86.5"
  sha256 "3214d09e9d4b24da4423b6a8df04169b495e37953177769a0758dfd60b469961"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.86.5/equipe.dmg"
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
