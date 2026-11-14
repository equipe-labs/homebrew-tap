class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.115"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.115/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "210c5e991d334a741adc9ea7f06256894f15e004f2877f1eacc43053e5c82d02"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.115/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "6f2c3b34cd3857f69657522c2369da2aec58eb57d83eb2656d8d9d16f6ebb893"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.115/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "66ce858d4577754db461ec22f1ac06ed09463e7f7a182184346201f044f62816"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.115/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cd88b83c7702a1f14a5434d62859785051b1abe4d918a388770baf59779e977b"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
