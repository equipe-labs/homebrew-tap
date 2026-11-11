class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.86"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.86/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "9be16d91e60b05ed9871fc9f61a3be607492e64d2a621a99939b8afaf1b6dbf1"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.86/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "b02e348d90c4c6244b09f9a0e475a670d8cdf2b2fdb9d22c3fc51b5356f424ff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.86/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7fa689b380e033edaa708c53c124697389a45fdc3d321edd994d42583fbbbdbb"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.86/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "536d2c62399d9ddcbee40072691f154e885f964cf1487e5ad89c05c6d54c5fb2"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
