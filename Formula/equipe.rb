class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.24.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.24.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "0678cd48eaf3f04eec129d6b689f5263157da8bb5717c59703211a4c58de9174"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.24.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "adf7a973f525cce422363b3012c992d65a13ad69d9cfb430951d30c16635774e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.24.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "444f9e957ea189380b197138ab096f2f10d7cf1ca4f16ef139ebb5711bce1085"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.24.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "51a892cb400ea0f2e149cf1a46a5ac4fc4acc71aa73e17bfebd964702bb870d8"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
