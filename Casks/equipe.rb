cask "equipe" do
  version "0.103.1"
  sha256 "7a8ba8d296f503dbaf8208532bc57e76fc92322455ac49ed001ab5daa5efb760"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.1/equipe.dmg"
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
