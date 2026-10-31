cask "equipe" do
  version "0.93.0"
  sha256 "568b47ae606b3e9e74a028a8223f3c2fdd504a73c64a96c12476987ce3a33a36"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.93.0/equipe.dmg"
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
