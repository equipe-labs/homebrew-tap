cask "equipe" do
  arch arm: "arm64", intel: "x86_64"

  version "0.103.138"
  sha256 arm:   "ec2be8ba00fa57e8279c09406c2aaa6b032e90c662acbb2ffbe377c70c5b1d6f",
         intel: "c355227e41b3b16a19237cc4b28e90d84cc307e43ab5174c9c61ffc1a210e7ac"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.138/equipe-#{arch}.dmg"
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
