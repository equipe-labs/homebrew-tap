cask "equipe" do
  version "0.103.74"
  sha256 "ccead8d172b1827a50f6db5a04eb795f62ef840609a19f72bf3fec335267a700"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.74/equipe.dmg"
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
