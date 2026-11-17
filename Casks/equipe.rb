cask "equipe" do
  arch arm: "arm64", intel: "x86_64"

  version "0.103.135"
  sha256 arm:   "c6cbc12e2f34fcb926e0ea71a17499635e041dfc5a42d9b2a3901c2b9f11554e",
         intel: "77bf77e9fb5648431683c5736994ce3f249df69b2e92b7b14b54bf004e86ccf1"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.135/equipe-#{arch}.dmg"
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
