class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.8.1/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "8400a073cb141f053f9d25f05f89c799c4e2fe32115053a20b7fb3d56d558c4c"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.8.1/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "8bac6750833c7d4169f820e19a5fe578a9ab8360cc5cec3e832ca2ad780eb1cc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.8.1/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "659f9f4cdd6ed386616d84d7e30da77a756332d16c029efaf519763660d23a3d"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.8.1/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4959e9dfe684cc81cc6a9c5a50e9d0a32ac279a33d02adda5f4f8494bc99748a"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
