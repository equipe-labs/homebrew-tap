cask "equipe" do
  version "0.101.2"
  sha256 "4e971ebd2792532a50bf9fc27bfba18391f0491f30de110bca5b9488dda1630b"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.101.2/equipe.dmg"
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
