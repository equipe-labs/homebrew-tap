cask "equipe" do
  version "0.103.52"
  sha256 "d159af73284dfae730635f65178a78c216ec36e0ec75738f6fbdaaecd1dcba24"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.52/equipe.dmg"
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
