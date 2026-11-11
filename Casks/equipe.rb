cask "equipe" do
  version "0.103.90"
  sha256 "40bc91ee0b9352dab75ef61c6816013811252e92ced9709751dcc6c8a74f272b"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.90/equipe.dmg"
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
