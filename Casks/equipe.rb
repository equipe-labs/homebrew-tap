cask "equipe" do
  version "0.82.1"
  sha256 "07f7a5f400b7bcddab9862c559965d106d0afb6c85df6f9fb71391affef8d2e5"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.82.1/equipe.dmg"
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
