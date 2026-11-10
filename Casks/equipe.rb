cask "equipe" do
  version "0.103.80"
  sha256 "765b10107fea24a521703e2763b3c8cacf0910c5fbc997c981ba2e4249e22cec"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.80/equipe.dmg"
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
