cask "equipe" do
  version "0.84.0"
  sha256 "1e8d7613338708f20d1b84ffd0975289845655d7bbbe0e557fc5c5db71ee7257"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.84.0/equipe.dmg"
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
