cask "equipe" do
  version "0.54.1"
  sha256 "788b2a736056b3d279691d974bb1b141c6f897af19cd0f15e2b28bdc9f969e7f"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.54.1/equipe.dmg"
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
