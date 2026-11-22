cask "equipe" do
  arch arm: "arm64", intel: "x86_64"

  version "0.103.163"
  sha256 arm:   "69c2b14e90614205c1bea54f907bd509f9b5443030cc7931fd971e18985231e7",
         intel: "eacbcdae3b74574226dd2a6d162480fc30b6c78f943274c1eb2672d9bd176a47"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.163/equipe-#{arch}.dmg"
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
