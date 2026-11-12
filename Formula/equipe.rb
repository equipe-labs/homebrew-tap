class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.95"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.95/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "acaaad14dfad397f4b50695f757c1cab04c887206453bb2fe41bba6ace3a0fb9"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.95/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "ad61dd623cb799a3a3006cb3c87006ac1d26cc3a1c7878e8636ddd662b11273a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.95/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "da9c74085aa534639d14a5f9f0ce4f4f9668eeb81cdd5987c2584a18c1ec6006"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.95/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e9b4803ed8349e4c310a7445596c2a571c797a5b5403404785a011aa6aed2ce7"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
