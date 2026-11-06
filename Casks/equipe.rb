cask "equipe" do
  version "0.103.50"
  sha256 "24486596433a18483f2da6ef185710881bd60f74df25cc48ad82592682bf19f7"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.50/equipe.dmg"
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
