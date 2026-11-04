cask "equipe" do
  version "0.103.34"
  sha256 "2eba362ab3a1d9d7ea46d9e173cfad0383ba814212e72a06eaff379760549ae2"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.34/equipe.dmg"
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
