cask "equipe" do
  version "0.103.73"
  sha256 "c99763c254bc31ce6243d9c2168819249f4140ded8068c46fe2ea1980bafd026"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.73/equipe.dmg"
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
