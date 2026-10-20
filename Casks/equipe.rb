cask "equipe" do
  version "0.85.0"
  sha256 "6cf5cb6830c1c8bcf8e9a88b9ab8f67f6f9a987039f333bd483d93e9a3ed2306"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.85.0/equipe.dmg"
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
