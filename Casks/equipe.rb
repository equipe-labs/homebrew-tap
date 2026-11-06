cask "equipe" do
  version "0.103.45"
  sha256 "7540693cc867e8045664ce66c44f1bc427c24e820ac32dfc343f743ac58c5938"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.45/equipe.dmg"
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
