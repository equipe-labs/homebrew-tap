cask "equipe" do
  arch arm: "arm64", intel: "x86_64"

  version "0.103.158"
  sha256 arm:   "04d118b2d59cf6f2c547d430449fcb5bc1a87b0eca2193e03da817bb9f7084eb",
         intel: "64e04991c3264010009b6e4273a840de270c1c62d0487f6816e8381f1e28736a"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.158/equipe-#{arch}.dmg"
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
