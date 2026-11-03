cask "equipe" do
  version "0.103.9"
  sha256 "35af0a3833eb902970b3c5af0b1c84cf8754e2750684d04dce2695c5e7ce2df4"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.9/equipe.dmg"
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
