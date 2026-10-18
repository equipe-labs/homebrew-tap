cask "equipe" do
  version "0.60.4"
  sha256 "6e6c48f4f6bbd8fddf51aa9a4696d21aa6c13613c0a2bfc3d6480b99569cc233"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.60.4/equipe.dmg"
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
