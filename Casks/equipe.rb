cask "equipe" do
  version "0.86.1"
  sha256 "0d552bce0aed5d7dc94423b64b5452b78b854990a1a42c6348771d8585f90be7"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.86.1/equipe.dmg"
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
