cask "equipe" do
  arch arm: "arm64", intel: "x86_64"

  version "0.103.161"
  sha256 arm:   "e62490d1c7b8fd7d4bd8a9710c5ef3c58c46b499adc7529f0e51d66c66b9a28c",
         intel: "7561eccae1f3b3015536d845430122e56a776b67d717e0f4978c0a5b9540096b"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.161/equipe-#{arch}.dmg"
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
