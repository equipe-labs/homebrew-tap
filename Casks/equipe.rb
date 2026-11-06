cask "equipe" do
  version "0.103.61"
  sha256 "97e6de08bda8a37fbe25731760d24168aad88ac78651fab658198f967b9f085e"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.61/equipe.dmg"
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
