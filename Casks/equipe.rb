cask "equipe" do
  version "0.101.1"
  sha256 "163305416fc6620b25ba5f6628dcc94e9b0df01dde7e53e70f6fe8b95aa583de"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.101.1/equipe.dmg"
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
