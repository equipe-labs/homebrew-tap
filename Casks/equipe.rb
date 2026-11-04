cask "equipe" do
  version "0.103.35"
  sha256 "6679500dde82a88333aa5712947a0f591dd55812fb54557689c3a78ac3080802"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.35/equipe.dmg"
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
