cask "equipe" do
  arch arm: "arm64", intel: "x86_64"

  version "0.103.157"
  sha256 arm:   "90c989f08e2f390fd83279e5b3f1b9192596dc2b4fe984ceba5027ab67c5cfbc",
         intel: "7aa65b14594af4d3d3ada90e9cf7f63a3170b200221bd142f306962cba3ca9c3"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.157/equipe-#{arch}.dmg"
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
