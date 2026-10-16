cask "equipe" do
  version "0.54.0"
  sha256 "8aa996111f63f6d3efa9cc7eb844768d434ce0d172001ce126493133e0f781a4"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.54.0/equipe.dmg"
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
