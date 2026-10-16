cask "equipe" do
  version "0.52.0"
  sha256 "79f7347456b5c45a125cf13d71fafda452dc13c8ca579b96d3d15fe5348b7b89"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.52.0/equipe.dmg"
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
