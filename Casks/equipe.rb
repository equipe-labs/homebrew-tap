cask "equipe" do
  version "0.103.97"
  sha256 "0d58bf9f038b9a4b9bbd88220667b3fe9c0d0f4ccdce095b8cf033c58a832e58"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.97/equipe.dmg"
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
