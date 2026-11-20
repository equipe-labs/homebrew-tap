cask "equipe" do
  arch arm: "arm64", intel: "x86_64"

  version "0.103.153"
  sha256 arm:   "796207297ed5dfde014bd365fa145fc93636f4e8678c6262c83d0889a261e416",
         intel: "b29a6eb1afa89591db721f929f4471f903a47155ac5ff632e16c85f3c49c9f92"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.153/equipe-#{arch}.dmg"
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
