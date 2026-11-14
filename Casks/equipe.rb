cask "equipe" do
  version "0.103.119"
  sha256 "154c127c740167060ed60ca12cb2e28853b02af1185dc8ccf123f966de5972b4"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.119/equipe.dmg"
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
