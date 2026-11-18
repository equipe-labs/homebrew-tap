cask "equipe" do
  arch arm: "arm64", intel: "x86_64"

  version "0.103.139"
  sha256 arm:   "9694452b369b67ad19a3f8ebfba4d51a8cde06084af0660df2c4a24e1d563912",
         intel: "4621d6c884a5cdd10dfbbb62c11d081b525fd155508cb7cb5e32c836c9fe76c3"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.139/equipe-#{arch}.dmg"
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
