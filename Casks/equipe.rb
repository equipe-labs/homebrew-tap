cask "equipe" do
  version "0.84.1"
  sha256 "17f8f2f6548b1d72671ec26b2798655aad327838a94f1e3e3ae0cb92ea2df243"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.84.1/equipe.dmg"
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
