cask "equipe" do
  arch arm: "arm64", intel: "x86_64"

  version "0.103.154"
  sha256 arm:   "b5de074f169a791612f155edd944594533fbe11ecc0f1338bdf3672dcab78cce",
         intel: "85fd0d9f346b826c93504837f37cc6d99ad77df9e17ce25fae49afbc8f85d4ff"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.154/equipe-#{arch}.dmg"
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
