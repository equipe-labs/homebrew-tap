class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.206"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.206/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "0b9769374882512dcf0051b5b121e38d514b57dc5776dbea328dc8db4a0c093c"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.206/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "dd4d1399e1d99791b645a51bad132bdc403e647d1acedc26621ce524bb0b12d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.206/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ca8d6b37fd1c496e10542736a3da2a388a1183b55112b1d3487321319026b790"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.206/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d11f51fb93fd0bc0b2f27c49d39b300536a95323255c64cde78bd8011c53a226"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
