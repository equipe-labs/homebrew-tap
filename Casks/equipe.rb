cask "equipe" do
  version "0.62.0"
  sha256 "65ce747522bf84c4ef97e69c2b820505a010222f55b7efa053b3a260c78b9c7f"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.62.0/equipe.dmg"
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
