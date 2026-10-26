cask "equipe" do
  version "0.86.4"
  sha256 "354886bd1504e4035f22a5293bf9cfb911bcafe54101e484813e0c9b5cb2e56d"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.86.4/equipe.dmg"
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
