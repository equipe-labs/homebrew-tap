class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.130"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.130/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "49268a076efc09f242dc4a7ecce61d3aea7925573d0e41ece895efdddb7bc1d2"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.130/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "aa406a3ee55c9ef437db1eac564bc78b664ac1f3a37fd4e0c3d24a0f566eee0b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.130/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d8fe478e2c398087f8b1bf45243c838358ed2bd875dd670c576f3f7e9d7b242c"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.130/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7d655dea766ed33be97a12efaee1558ef81948f4ef95764c080f080a278587c8"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
