cask "equipe" do
  arch arm: "arm64", intel: "x86_64"

  version "0.103.132"
  sha256 arm:   "f90c910f18ab608870bc9742da3c680357e55fa70700fadfb6411487ecee5265",
         intel: "52610416a07dfbdf0770ef62ccf2d3326dee72591c3e72ec691cfc0d3246cce8"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.132/equipe-#{arch}.dmg"
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
