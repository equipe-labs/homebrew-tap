cask "equipe" do
  version "0.103.37"
  sha256 "2ced79d7412c658de026392637e14ad8a47b6c8240018ec496ad2b07c280ba2f"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.37/equipe.dmg"
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
