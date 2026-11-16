cask "equipe" do
  arch arm: "arm64", intel: "x86_64"

  version "0.103.129"
  sha256 arm:   "b744d60d45cc0e0758fb9cf9f83bedca0cc2aea698274592c7859ed383db0315",
         intel: "d77b347bb47b0592b9f02257e0079389e71a5ad5772e8ca450537443f9a5b19b"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.129/equipe-#{arch}.dmg"
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
