class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.53"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.53/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "01919df48f134c0fbd88942ae3ec5292ccd1d62d83121b22461927385a714071"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.53/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "5ae126126a8a284e351966e322c8dd89211d501a2c775dd9bb914a917129c03e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.53/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "627c0d529e74738e5a0f8b026f57fbdee15ff1f3f988bec29182d3e7123d3017"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.53/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7e08382af44c1bf15598e663fdedba449387e7bc8bbcdf906989efadc03f4e93"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
