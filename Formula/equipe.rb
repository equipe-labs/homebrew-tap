class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.126"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.126/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "b923c20e8ab9600962b47f370bf1ad937d1ef12a874dfcee3c956ec318f1718d"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.126/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "fe67f0870a68190a288486e7cf9ede8974cbc2c0673523268655b6d43fb007c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.126/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e28234fba50a3b1b38862854fc2504d7f6d861db43115e78068d6b2605d4f095"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.126/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9151a45e059580a7910cc59711f15df5f6f30cb303210f1235209824f8dacdcd"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
