class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.151"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.151/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "601cbd719678b4d954e09f9c07ef137c498aa1842000b41b6d3708052e825b36"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.151/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "d302ffc9b98f293bb714f25aa22c22fe0fd395b58184d905443d6ce2b5965510"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.151/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "da1dee7776fea83bced263d90aac88946b696a767885b030783562750e269120"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.151/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7d9a23f3280515c8faa59e4e34ab87c142bc085f5bcb487e6ace4774fdc58823"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
