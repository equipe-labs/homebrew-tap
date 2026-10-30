cask "equipe" do
  version "0.87.3"
  sha256 "fc782b68b53594a6dbfe8c76b613fbd271fce33ad96e1c7be0eb9efc53e4daa5"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.87.3/equipe.dmg"
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
