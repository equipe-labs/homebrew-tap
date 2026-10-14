class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.30.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.30.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "8e6e8839beff7acb6e4d19a4e1e64c035d737ccf8425af8fc8c292e3bea9e572"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.30.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "2e7e44b45eb06bf3364e975bffbd296068e257d6d5c14697c1a03a7c9eb562db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.30.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "058ec3ae489e7ec344b8b41f6eed372c2fc2105c0a86120d6726aa872dcd15d3"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.30.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c01b9083fd427ec6351ad8cfa74f21e688a78ab10cc5b9ecbca0a979f5004df5"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
