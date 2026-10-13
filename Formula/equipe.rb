class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.9.1/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "21c49999179036488cbbd07ba4d337f211c4628d2d5dcd4d9e57edd339c5573d"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.9.1/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "ce50057bb396a9e1be30061bf57b7bcbe2eb65b511492be763819c6afe2e2e14"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.9.1/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ad5d43e420888cbc514f7698a0d84ee679fdab18b9bbf3564ed817d470a6f451"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.9.1/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a9fd19cbe40f0d535352043fad21c54c6918c12aefc94467fce216deeb0475b1"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
