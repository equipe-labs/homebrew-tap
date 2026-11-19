cask "equipe" do
  arch arm: "arm64", intel: "x86_64"

  version "0.103.148"
  sha256 arm:   "9b9f21a4dcdbd92e30cb2adf5f0e6248fd7b93814cbbce5181f587749d64e734",
         intel: "fca165d7d8ebf89b9b78df30dce786814d4700522421e53831a25a015e4c23f6"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.148/equipe-#{arch}.dmg"
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
