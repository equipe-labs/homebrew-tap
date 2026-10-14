class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.19.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "0eee0a97ec7da9a5fa2889918861755a7a5361839028d92d1f5dec2b9fa1fb43"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.19.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "c1b6f77e23ba4a03a6e04f3d41edb365e950a7432b68d4467df0e259ac123a54"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.19.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e45415ef8f0cf67d268d8790f8225103282821998a71cd121312225295f55af9"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.19.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "39efe9d303029a3bc678fdebb1eb9a139a1d72bd26d1d81ed5cec17e311521b3"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
