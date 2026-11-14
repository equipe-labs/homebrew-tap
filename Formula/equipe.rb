class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.114"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.114/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "ebc7f87284a0b9d2adea1561d54035b4aeb26aec1db071b3acc97c29a19734d1"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.114/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "7bbedb2d81fb12a39f79c92ed696e38911627b52f9f1092f455e3cce49b9fd91"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.114/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d391b71d30221212fe5d9574b177181488c70acc0059736fc086ec94d4bcdf2b"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.114/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1bde4f1245a838bfecc7e17b8bc021db7e44d3d414c87b9201f02a385ce2cc17"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
