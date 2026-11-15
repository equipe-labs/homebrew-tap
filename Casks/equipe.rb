cask "equipe" do
  version "0.103.122"
  sha256 "f3095a8060002bc1eef837ef3cfc0543360cd4312d174605c9831170a96e595c"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.122/equipe.dmg"
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
