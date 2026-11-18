class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.140"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.140/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "31d55d144cfd17d376a80bfac002393b6b94ed46a1333bb527c07d05cdb00832"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.140/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "60f6c84bbda7248c45ea95d87ca71c4a20ffa742a5b20a566beb91236e2f2a23"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.140/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f727d77057a13837d268aab2b2f00d1dbe40559070e345c5f397ecb32d2aa041"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.140/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ec9e52b5d77b95aacf8f39ec055d1b9c7197142667eff42d531741f6a254cb1f"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
