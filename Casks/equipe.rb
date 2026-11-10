cask "equipe" do
  version "0.103.76"
  sha256 "57186dbcda0b2a9f9a33954a3bd0997a0e94616db9a1ae4a3b30002014671795"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.76/equipe.dmg"
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
