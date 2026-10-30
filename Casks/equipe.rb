cask "equipe" do
  version "0.87.2"
  sha256 "0b688c5f42527d29be2d6fa979e6f56a4ef1e8640f99e258bf8f0bef7de6b275"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.87.2/equipe.dmg"
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
