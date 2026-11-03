class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.16/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "6e269cae620ae60e89c97df30c06c89f335649532947a73529c9022567fef91b"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.16/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "4190b49944d9e36cef3c523815d75cb82be99e0a710738c8224a6244e167d770"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.16/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7778663dde778174fa2e786458442960d4014e378a466f847aa0ca1eb794e0e3"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.16/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "13b2b3edd03a19a0aa44a4a37668835de5e45b2433d5daf9a67642a328d170c2"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
