cask "equipe" do
  version "0.103.91"
  sha256 "d5273dd71b26126d51408f9aa0d0e70d5f6978bb250fefd1d8eb25949eda5bae"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.91/equipe.dmg"
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
