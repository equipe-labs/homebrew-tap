cask "equipe" do
  version "0.103.84"
  sha256 "56deb695c441d99bf3d676aabfe0072ee4d970b75cac43330c0a83759f3e6394"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.84/equipe.dmg"
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
