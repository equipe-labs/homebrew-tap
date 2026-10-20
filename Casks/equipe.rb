cask "equipe" do
  version "0.82.2"
  sha256 "9de6f96b8ec0d2136384f84079fe888701daa7d771f8b18e6b8bc029fdf9fd51"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.82.2/equipe.dmg"
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
