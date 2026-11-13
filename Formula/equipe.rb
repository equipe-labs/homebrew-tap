class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.102"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.102/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "d40662ecfd56d211ef2a72d6284f1a2d0a247f5bb19388ff93ec644ebc3b2463"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.102/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "d6498657c37a4f853f411c7aa2652dd82060d912cbbcbc575cc9ba6371c42637"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.102/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d362815e51133fc09855e15390fe751862be6ebfc86467f6facd81a7a59f3e43"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.102/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2906935af8b12a0fdc858a1c95ff314ca63e9e6ccaa6b05d643e76400dd37d12"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
