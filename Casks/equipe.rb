cask "equipe" do
  arch arm: "arm64", intel: "x86_64"

  version "0.103.130"
  sha256 arm:   "509c9ee5b116c39088e3dddb656742144fbd403ba9b1574bb5d08a8600a7bb79",
         intel: "7a511e9b4cce566f784da3a8474f824f9a1b6716eb8c919d1842874c05e64edd"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.130/equipe-#{arch}.dmg"
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
