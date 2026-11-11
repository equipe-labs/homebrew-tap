cask "equipe" do
  version "0.103.89"
  sha256 "98e714adc8b6d49f9777c2b7b12da927d19ca8fa20adc7e8a040ee7d7aae144b"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.89/equipe.dmg"
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
