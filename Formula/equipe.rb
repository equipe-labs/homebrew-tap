class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.83"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.83/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "a62b967247c009fcf70fc1931de6a2f82f28c651f70f14ecdfeb38ea0c2c9924"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.83/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "4d37da44a86ddff243e23a3d229aea5a749974dfbfc40ebe7082364371b86cc8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.83/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6036f5c4a773be246ed561a3c7b3d0bef66b5828d95211d7886ea304b261d7f9"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.83/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "196a3ffa690681fa40bb6b778bdd7c649e3aed197ae0595d81606ec13b867d6f"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
