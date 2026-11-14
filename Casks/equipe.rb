cask "equipe" do
  version "0.103.112"
  sha256 "730ac7654ce3bb3dd1fee05a2435f9565296c473e72ce9e98bcfe70f49d174c0"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.112/equipe.dmg"
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
