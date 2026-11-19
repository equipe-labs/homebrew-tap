cask "equipe" do
  arch arm: "arm64", intel: "x86_64"

  version "0.103.147"
  sha256 arm:   "cef6df3f5e9d0e91efc2bf6aac4d48117abad60b9cc442f41017bc067429feaf",
         intel: "878c363398ebb984686ea8593568003d5e0201637a08de2627b9f3d2c7f0c0d3"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.147/equipe-#{arch}.dmg"
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
