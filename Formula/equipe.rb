class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.178"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.178/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "a27fbd5e50de4531ef9d9c4554045584a8d0b6930d3e713b9d1d3bfa0cfde1d1"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.178/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "1fd383f347e9e8cae87d7f089692e0f2aa6389b983606144f100c617fee96590"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.178/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "53e200efa5de0733f8e1befdaf9fa6f159c42cc9bf9b5b59f7714e515c12f415"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.178/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c755a4628da698be124dbc7530a88af1c375f569787e486f991feff15f9ef4b4"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
