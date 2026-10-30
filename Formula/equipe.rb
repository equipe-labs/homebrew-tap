class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.90.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.90.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "4c70b99c64add2eb81b894fb46efda146474ca3013c490d899f3efd54a16d5cd"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.90.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "adc08a3e7d42c52151d23eb129c95dfaff35ea8640bb2eb31025e3828b9bd7a9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.90.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bd101e6e6f1a1ea53c716ea9f4ca01432766e12abd4ab7407ed0d41c686917f5"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.90.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ea4c527b47438a89d7c6077a82020af9926f35b8b5765158bb0ab83868563c63"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
