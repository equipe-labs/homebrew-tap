cask "equipe" do
  version "0.60.1"
  sha256 "279ef9b84020794e29bc2db22ef5849cce0a3e5dc6c8c194f31195c4edbab709"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.60.1/equipe.dmg"
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
