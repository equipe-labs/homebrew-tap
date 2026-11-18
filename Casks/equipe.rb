cask "equipe" do
  arch arm: "arm64", intel: "x86_64"

  version "0.103.142"
  sha256 arm:   "5a3664423c8a41dcb86095100256444f3a8b028ba2f33a91144b87e93d2b05b1",
         intel: "3d7d46c8cb7c83a792ae283f83d58aaa9906833a99bf4f6f20e7c9190fdf9779"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.142/equipe-#{arch}.dmg"
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
