class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.127"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.127/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "c5edfc05aea5c8c44b5c53887cfeb2aff5ee828cb71d0c70f7a6d1f4be2919fb"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.127/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "e51d3951833f1000cf59231ec2df5b6118f3db76d0522479515edb7597140ec6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.127/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "25aa5441791479876c5d60152f8d396843450433c0964e2c7f87e1be77fb365d"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.127/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9cc6da1540a74e5878ba0ead7da5e0a2d17cfc72bd8454ea33836445bdc8ed76"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
