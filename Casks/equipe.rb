cask "equipe" do
  arch arm: "arm64", intel: "x86_64"

  version "0.103.144"
  sha256 arm:   "ad6ee4daa958dd86c49ccf38b258da3547b579ff9e36e32a058ab5b60e103654",
         intel: "2fcb15faed9bfdca8454b25b71308ba2dfe06896f659f70f503b092bc1479091"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.144/equipe-#{arch}.dmg"
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
