cask "equipe" do
  arch arm: "arm64", intel: "x86_64"

  version "0.103.160"
  sha256 arm:   "1962af85428deddd28fe28e70bdba21c3908d81789abe2a194b0389035150ef5",
         intel: "87e175b26f29c3839d9ec467852e2b3b28c0bb409c142553555f606c1b0996fd"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.160/equipe-#{arch}.dmg"
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
