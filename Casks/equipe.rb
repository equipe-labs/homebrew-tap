cask "equipe" do
  version "0.101.0"
  sha256 "a5c9451e9547a6c0ae0ac077975858932311d82fa707805ac1cb3bac6743fe1e"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.101.0/equipe.dmg"
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
