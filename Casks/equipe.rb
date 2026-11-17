cask "equipe" do
  arch arm: "arm64", intel: "x86_64"

  version "0.103.131"
  sha256 arm:   "6739c4566b1ef79b536a30f45eac954e54b3ca36ff78da6338482d0ab10f1326",
         intel: "ffee62f2f68176d2485e01fbf9ef1e3bf0659ed7e68668575168c2b8b44c28e7"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.131/equipe-#{arch}.dmg"
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
