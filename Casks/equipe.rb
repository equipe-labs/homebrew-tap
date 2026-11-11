cask "equipe" do
  version "0.103.86"
  sha256 "ae19808d6e74072f9342c833ac2072e19e0977d36d44619be980ce25014fbe43"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.86/equipe.dmg"
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
