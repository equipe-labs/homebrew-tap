cask "equipe" do
  version "0.103.4"
  sha256 "7b3be4446e9db3cedfcee9fee4fcd84c48ca41c614279038acb9272d7c98abf3"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.4/equipe.dmg"
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
