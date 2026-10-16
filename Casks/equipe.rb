cask "equipe" do
  version "0.55.0"
  sha256 "ece6b40f4123d06b99cec296d81336b7c918560f9342d038b6ff7ab88abe4b02"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.55.0/equipe.dmg"
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
