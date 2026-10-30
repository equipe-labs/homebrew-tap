cask "equipe" do
  version "0.90.0"
  sha256 "23b696b28948b144bda88dc4c722ef6b3c7cc7bc9dde958135229fcbe64a5fe6"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.90.0/equipe.dmg"
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
