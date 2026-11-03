cask "equipe" do
  version "0.103.19"
  sha256 "2b7dc2b0ecc861c27190da16b12c14be64f823646ceea47ee6cac7a897059e55"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.19/equipe.dmg"
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
