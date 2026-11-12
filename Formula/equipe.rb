class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.94"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.94/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "92f892f97fc7cd6cb49b88de84dfecdd32559d4453c6f4ee3a19abdc4eda0124"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.94/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "b3db3bfd9eadef5a66d750ac22d06bf4e5d2817f9f4cd892afee695a0ad0dd3e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.94/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b9435eeb223c9069c6454f4db63b9347ba094459b7ea39e34a484436ba6c9331"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.94/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "11a9f57f83b1a60c039887e5cede1b7b2009433d00d1ed1aca324f52a916d08e"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
