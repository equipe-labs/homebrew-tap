cask "equipe" do
  version "0.77.2"
  sha256 "a368ca11c7377a34b0dee0e5b100a907b0687ad599da5506c36adeab563166a2"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.77.2/equipe.dmg"
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
