cask "equipe" do
  version "0.103.31"
  sha256 "6e77837f341ab9977fa016a65f32df8f962aa95a1c932a0565b1dbec41cf1b0b"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.31/equipe.dmg"
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
