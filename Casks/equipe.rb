cask "equipe" do
  version "0.103.114"
  sha256 "42eb738c3a74ce3abde2cc50aa046b986d8b33c0ebc7d5546529b8559f9e4c9d"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.114/equipe.dmg"
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
