cask "equipe" do
  version "0.103.104"
  sha256 "7c35631ea96d884881b1f92335aec2532c954aa91600c42111ebf439eefdcdce"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.104/equipe.dmg"
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
