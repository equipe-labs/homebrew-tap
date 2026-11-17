cask "equipe" do
  arch arm: "arm64", intel: "x86_64"

  version "0.103.134"
  sha256 arm:   "890a24203e93fac1dc1cb96480f848d5b4066c4b8f97e6c7651177a7e68f15d1",
         intel: "1cc26ec8511aca3e4553457468dc7598a2e94b7f7390e321f074b62d23fd3606"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.134/equipe-#{arch}.dmg"
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
