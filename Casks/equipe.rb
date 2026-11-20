cask "equipe" do
  arch arm: "arm64", intel: "x86_64"

  version "0.103.152"
  sha256 arm:   "ae8f112a0772a709efaa4aa67e1e14f5a7bd80bb5a905dcccf535b239283e1c8",
         intel: "ab228ff68903d7333ef4986c5db8885606c751b9022e69c89459aeeee2f46ad0"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.152/equipe-#{arch}.dmg"
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
