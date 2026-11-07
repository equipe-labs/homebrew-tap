cask "equipe" do
  version "0.103.65"
  sha256 "537ff915e00c9eab70f70542829bfe27e0499ba3604e6954202b9116822bcac2"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.65/equipe.dmg"
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
