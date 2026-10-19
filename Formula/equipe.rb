class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.62.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.62.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "0686331471086bece0c8555046fbc74a71377422c4cf292f2f60fce503516246"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.62.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "c70183254c6b10a08a11260b81383a46b84eafce7bb38a2f76ff6a5962cd2e26"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.62.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d77b9c4eb107821568f44f8515cfb2bdca954f6cc2d192b55db2511bfa68a777"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.62.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a563fb011b151161e26d1268607132c1e6b5a9f83436fb4d1ba6c04e06eea59c"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
