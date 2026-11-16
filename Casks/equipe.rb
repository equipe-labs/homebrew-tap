cask "equipe" do
  arch arm: "arm64", intel: "x86_64"

  version "0.103.127"
  sha256 arm:   "968f9f00ec5a1180da151e15d5489269536424fb32fd087a721d79a89a44e4d5",
         intel: "4775795695dd15e571b4bb3e2846d6345c3eeb4c7f72b29e9863da5827cc291d"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.127/equipe-#{arch}.dmg"
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
