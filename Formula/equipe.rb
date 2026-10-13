class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.7.1/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "39af1ad593635231f412ddb970472a426fb689bc248b43b84a8dbd93556ec69c"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.7.1/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "c9361c5413b4ff0c68552307923162fa121349f909ad2d3c62d071d2b0dbdcb8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.7.1/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7bdf29a202f1e72c15b477548dc3f420681e842698a7bee81e9900792ae7b995"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.7.1/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "317476d93c2580316223c7fa3a27fb256c85a5e24a6aeb4474bbdb68658d124b"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
