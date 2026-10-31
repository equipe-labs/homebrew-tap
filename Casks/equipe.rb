cask "equipe" do
  version "0.97.0"
  sha256 "3aed423dafd562db06c3bc9a610f41dc09bf5484ee8abba5d01ecadf2d9276e2"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.97.0/equipe.dmg"
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
