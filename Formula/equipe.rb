class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.8/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "f207ef7de988fd7d47b8b65b23f7dc0ee19c93e05865486638657d69a966973e"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.8/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "d64684314b389fcc5ceda0542bc8f8e5121844423b9ca1fd238d9dc06e054622"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.8/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4179e598dbcd578b1dca05c56513f7359d593c7d3f4032750ac904081efd1a93"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.8/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fd1ba16039c67ed5981f9e2d744290ed1310eb9472ed6a70ac8b45f6b28e2652"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
