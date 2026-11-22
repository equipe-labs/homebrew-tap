cask "equipe" do
  arch arm: "arm64", intel: "x86_64"

  version "0.103.162"
  sha256 arm:   "99437e0ec8fc94702a9c712c1ad7e12b0fcb57f03099d0f73f80a00386ccabdb",
         intel: "d36c7c90874b90b3e7b32f26f7e8d901ac5fb089f5e38394e8093e9b6865279e"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.162/equipe-#{arch}.dmg"
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
