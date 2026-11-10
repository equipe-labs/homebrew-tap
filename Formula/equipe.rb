class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.81"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.81/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "41e62e3ce7260ecb00621caf4cad95e60552e85e32cc8284c38ef18199c73697"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.81/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "8b018cbfe590a636ac9b93fb15054d836800c01fc9794e9c4c3e9079d40e89ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.81/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c3c93f7063f8ae991590338b428f7a472d481945b07300248033293f306bdfaf"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.81/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "738198dde0973ca6a49d187d0e25601b65e359c04062ae901ecef24468545f55"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
