class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.78"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.78/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "55914bcb9faaba09510b145d2fca3a05bddf5e2ae0b08efc99051de36de0eb2d"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.78/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "1045a83137b4a13e6832a2b5d379a78d2b815ee208ff3c364c73b75a10eafbfc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.78/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "18c3e61504b81d96b25ec83d624c7b24dc918d3260c86479852343da0a5f5eac"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.78/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8acce587d10121af4109b082b89ffc5000525297765ea5d255806fea43da6c84"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
