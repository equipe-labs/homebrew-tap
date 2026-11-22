class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.162"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.162/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "d981f6f5453d9d7332ebf948cbe26a6a3f7ed35bedab8c0805f17b303d54db2f"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.162/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "68d4a268f767ac3461bd051481a3bbf75afbe5eb75334dcd75ea6011447e7fd1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.162/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0ce2647d28a34297b4901695828630712f5c934840833ff2ad38fa7321d512e8"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.162/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3f84a78b307b16846fb253c00447fc204786fa98acd3614ee9c6b1bb70835e60"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
