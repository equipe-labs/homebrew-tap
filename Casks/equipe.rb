cask "equipe" do
  arch arm: "arm64", intel: "x86_64"

  version "0.103.140"
  sha256 arm:   "30370a0d1b282add888fd4038619352da745129b2e47dfad14bcad97334b1751",
         intel: "e590be1c68bfa8ab5022751a73968e6eaa2021ff0ebcf088ee9ffaa68ecfc58c"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.140/equipe-#{arch}.dmg"
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
