cask "equipe" do
  version "0.103.55"
  sha256 "ae062525f3689f4fb5d3aba8a1f8c65a7f5a160642ecd9645c4708d53e13d0fb"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.55/equipe.dmg"
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
