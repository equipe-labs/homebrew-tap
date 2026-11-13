cask "equipe" do
  version "0.103.102"
  sha256 "2a4753c23317eb304beb0fe32c77d6220b8dfc2aea6c1097be9fb8975470f1e2"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.102/equipe.dmg"
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
