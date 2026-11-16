cask "equipe" do
  arch arm: "arm64", intel: "x86_64"

  version "0.103.128"
  sha256 arm:   "040d4ef8dee170081621eb56efc6a6b25945e0e953da0a850557ed1b3ff480b7",
         intel: "bd29e349d0e44bd5e84c746beca7081c03857c90b12bc838f1c3df5a44815293"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.128/equipe-#{arch}.dmg"
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
