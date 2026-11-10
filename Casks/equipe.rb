cask "equipe" do
  version "0.103.75"
  sha256 "3f901cc66a282443f3320bfb50b34a7008c264d87041238817da932a2dae8c17"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.75/equipe.dmg"
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
