cask "equipe" do
  version "0.103.18"
  sha256 "b560924762d51b228b09c399eccb494db4e7b30bd0eaca1b2c058f92f64bb992"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.18/equipe.dmg"
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
