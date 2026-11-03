cask "equipe" do
  version "0.103.13"
  sha256 "c1c5c51c0d38032e5347241b44cdac2d108a1c0c6d312a79e3afdf694d95c875"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.13/equipe.dmg"
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
