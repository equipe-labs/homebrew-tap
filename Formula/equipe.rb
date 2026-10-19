class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.71.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.71.4/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "7c61cdf2a1b528647abf86569992b9bfcf6780d009e97f506d566ad9f8e12b3d"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.71.4/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "81fb2f2d7e1f2fbc0ba1746aed67b392b85deb902bb21c9a293c0b0b2c47ba4b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.71.4/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4ad8864b5619cf81050eac40b0def4da6d94851f5782cc4d99968976bf990b97"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.71.4/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8066d87ce67f39f18d946182bb74e308f50e327ed0b5bd1636abb471734e9f00"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
