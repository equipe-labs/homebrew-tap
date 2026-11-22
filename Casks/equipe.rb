cask "equipe" do
  arch arm: "arm64", intel: "x86_64"

  version "0.103.164"
  sha256 arm:   "c5a7850fe9065dd96b27fe478d845e21cb8155db5f8a6fdb24e9d5bd46d00692",
         intel: "5480bb6aa673b48ee56efa2dd6e5820fb7a29e124d0e5e7bc026eaf2db0f1972"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.164/equipe-#{arch}.dmg"
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
