cask "equipe" do
  version "0.103.93"
  sha256 "03a188940db42a6d03deaee26aa29e8af0d1997dc21ac678c010da7f1300070b"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.93/equipe.dmg"
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
