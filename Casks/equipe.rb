cask "equipe" do
  arch arm: "arm64", intel: "x86_64"

  version "0.103.151"
  sha256 arm:   "c8c5e94230ced2e42c9eedb3ae20bc5af1a7d01126e9c2bd620e0c52ee7257c6",
         intel: "35a9702b01605f6738c62acb5ea17d35fd8b26d64250ac48e38f500fa4940e7c"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.151/equipe-#{arch}.dmg"
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
