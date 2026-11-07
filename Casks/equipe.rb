cask "equipe" do
  version "0.103.68"
  sha256 "fa0169ca292721e7cec61fb082ee0621d7da4139da7ebd5da867b8f1470e93f0"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.68/equipe.dmg"
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
