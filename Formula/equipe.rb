class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.101.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.101.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "3f1d358073bcfb5fa150ef1d8b706b61ac8b827543d370c62625a7d1fea63e06"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.101.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "afd49344748939de3984acb36d2ba755283ae699d08bb6936d208b23e0f91a93"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.101.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "45b6adfdb0a38e783747839ab628a4054d9aa00f4975ab6e68174e22718c8854"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.101.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "764b31b896fbb4d3068c954161a9faf265103b529239ee53b4a59512b88d61bc"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
