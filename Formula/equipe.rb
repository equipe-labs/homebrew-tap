class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.12.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "53d0aae386d20e9e1fae3812320332176664d3c6f59142ab11deca5d4cbfc764"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.12.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "a3f0031088d3d002dbb40c0e5164bdb4a78e9bc03ff916bb883fbcdd412751e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.12.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "45e15c3b8608675e662e4e25eadc905b477f2bfe6b6f20700daa06b96b9993b6"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.12.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b50391f31982d980337ca0a8e6b7dc3289055df1b532bcd34d208a33127cd57d"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
