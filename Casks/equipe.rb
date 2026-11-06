cask "equipe" do
  version "0.103.48"
  sha256 "3058c8435076bd0dbb47db719b81239595f2d6bacc9355c44cd8e549ab646a78"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.48/equipe.dmg"
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
