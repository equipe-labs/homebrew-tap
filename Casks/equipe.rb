cask "equipe" do
  version "0.103.95"
  sha256 "62d17f1bec8338a8e83fec4c0580bcf34406a589925cbb6cc6978d51ef2a2614"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.95/equipe.dmg"
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
