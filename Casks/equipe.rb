cask "equipe" do
  arch arm: "arm64", intel: "x86_64"

  version "0.103.137"
  sha256 arm:   "84c6f192256de1e59c35c2241137e29ee4f7cd2c9c9a3a2ca1d67117e81b1d91",
         intel: "41347a416a6f07e98dd4c356a9c15e16e25b8f7f77180eb66f8d0e6772b5acdb"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.137/equipe-#{arch}.dmg"
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
