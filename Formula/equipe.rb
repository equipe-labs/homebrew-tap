class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.202"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.202/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "ef04a3156d487d0bccc87201c6d661d848553273b16cf4db633e89b8a6a7b3da"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.202/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "7cfee6d5c682b3df991a4fe9ab0191141df7cc360ee69cf7d622d7fb1bbf7ad6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.202/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1dc1bd722e102329d1d2cf7bf5c678c1654aa7da7fc2dd229f984facd736907d"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.202/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b6a073097b3eac61d07b8eb0cd001ec36cb8b35a7edfb221ced4b5cbf39e74d0"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
