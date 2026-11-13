cask "equipe" do
  version "0.103.105"
  sha256 "4c48f3383bde419f716d78304d76b758f066e71e74f0d8bf0da7fb66890d0e6a"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.105/equipe.dmg"
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
