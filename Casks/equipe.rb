cask "equipe" do
  version "0.103.113"
  sha256 "071b22a5a53964c5bb4e1a4a5d415dad9ade0ec9f10d150605adc334b897669b"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.113/equipe.dmg"
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
