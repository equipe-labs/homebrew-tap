cask "equipe" do
  version "0.103.69"
  sha256 "0156d88545ed1a3f2f42a2ce337b2fd18e69f00d21150496e5000f2c6a3c492b"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.69/equipe.dmg"
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
