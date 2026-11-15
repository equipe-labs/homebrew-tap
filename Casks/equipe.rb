cask "equipe" do
  arch arm: "arm64", intel: "x86_64"

  version "0.103.126"
  sha256 arm:   "b569ced91ed63c42f5be4747b8322f729c6c4503e76282b8f6f4c21d1c794a84",
         intel: "984c92dff8eb4c141fff11aca7ef3b9dfa3c4244896f828ab7b7d7a76f11e167"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.126/equipe-#{arch}.dmg"
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
