class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.14.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "9e40e45edfbce0b85d3c92fa5e9a258c50e0d5fe765163ff0300f9301bc507cc"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.14.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "c3a0278202e1938f3ba8f4b14147472f718ef51ddce114563200fa6f8392326c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.14.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "308db4d9d84b206517d33e322700aa0907c652bdd00ccb2e68e666f768c70da2"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.14.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7d4814e3974a697e163c797d235b4f403b0f08be5291aecd80656503c144b467"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
