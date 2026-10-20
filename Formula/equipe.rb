class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.85.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.85.1/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "f614175f68bb0a6ebefc273c5ff3f34c0ca832be65268cdf229f2648d784ee36"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.85.1/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "fd4c2ae3cf4fc7fbc6c60f5496272718a016ddcb8adc0370bd27252d3e59c3e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.85.1/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "13b20ed12beee0a971b91d8805fe53edd8803ba8b49a1a3aa348c14686d2b74f"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.85.1/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "80350a86de7b53305e885ccb83fb784b24321b0a51b725f7becf6dfb2d85ac39"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
