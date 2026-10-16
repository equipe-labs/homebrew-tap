cask "equipe" do
  version "0.53.0"
  sha256 "fa54ac65ea3f146ad5969db8aecd9dc7149f8915577af0361eac8296704666df"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.53.0/equipe.dmg"
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
