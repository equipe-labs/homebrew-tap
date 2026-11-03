class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.19/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "740d54db795c332f371fbcd3dd1efa93f47441ed238de026ba4b29297d1c9f30"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.19/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "3d6941810055fb7a193737aad4e437fb59362f0164a34fd2e5a8fc971d51e519"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.19/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "51a78918ee959802dfd9537d72537fc35c82e0539fda0f470cbed6fbe4b8f618"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.19/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3380f03814a6add3db2e4d067eb31b444004fc69165f68feaec384ca73a2a308"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
