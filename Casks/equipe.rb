cask "equipe" do
  arch arm: "arm64", intel: "x86_64"

  version "0.103.149"
  sha256 arm:   "0898ed410c897a6f39574dc4a7a50b91d43e44472533874b961837df9a9c123f",
         intel: "1ef54347a80fcbb30bc95c889aa534fd160b8640356dbde6eee7d7a5b7574990"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.149/equipe-#{arch}.dmg"
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
