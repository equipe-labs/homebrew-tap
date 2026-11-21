cask "equipe" do
  arch arm: "arm64", intel: "x86_64"

  version "0.103.159"
  sha256 arm:   "a22e325603e8311cfb1cb39dd964d335db71dbed5a8a405de0bd75fc2e91a6fb",
         intel: "ff7d2fa1659288bcc995f26794365e7ec58e1897e7d5dea7b9403276f6df8e0b"

  url "https://github.com/equipe-labs/equipe/releases/download/v0.103.159/equipe-#{arch}.dmg"
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
