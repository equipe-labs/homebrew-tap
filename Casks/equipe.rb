cask "equipe" do
  version "0.61.0"
  sha256 "17beca3d1fffc3153d27be7acfef9f6c9265bd9615fa0348553b5eaf559981a7"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.61.0/equipe.dmg"
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
