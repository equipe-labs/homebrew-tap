cask "equipe" do
  arch arm: "arm64", intel: "x86_64"

  version "0.103.155"
  sha256 arm:   "a2ccda087d645c4f71e11c15651a147a612550a44c582a131553f2f67d56f91d",
         intel: "ef26247fa4ba3cc0b77d72d6c20d0c3f71d7e22bf19827f9c3a087c04c69a3df"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.155/equipe-#{arch}.dmg"
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
