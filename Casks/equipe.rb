cask "equipe" do
  arch arm: "arm64", intel: "x86_64"

  version "0.103.165"
  sha256 arm:   "feb1adaa5b83f026939094a8ff3e5f3ba1855479633ad5e8f005c80f4db07695",
         intel: "21eb7400db771db20c96eedebcf2cc4ea5e7b6d857ec1e11657fea6e5ed3e8bc"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.165/equipe-#{arch}.dmg"
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
