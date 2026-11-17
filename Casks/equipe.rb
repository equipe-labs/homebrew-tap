cask "equipe" do
  arch arm: "arm64", intel: "x86_64"

  version "0.103.133"
  sha256 arm:   "0843ce866d21783c9a13e00d9dfcf9f316252aa56ce264894c4b4d8019ea0f5c",
         intel: "e4d7c21f833dbe65539e31e14f5302bf7fcfe70ec4cf7d00d734ae536c3821e0"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.133/equipe-#{arch}.dmg"
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
