cask "equipe" do
  version "0.103.44"
  sha256 "d447fd174abd49572b8974bdafd145ec8feb785185f25fc8de913014990c14b4"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.44/equipe.dmg"
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
