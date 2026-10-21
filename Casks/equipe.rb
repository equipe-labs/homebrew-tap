cask "equipe" do
  version "0.85.2"
  sha256 "4860e722c82b215906a9892a1545e510e920fbff9be09c9d361d2ccd8c470f69"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.85.2/equipe.dmg"
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
