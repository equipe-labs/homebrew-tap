class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.153"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.153/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "aaed7b6b4a42d6f08bfd8ade54367cea69e669efc9a92f29b2373ab2d02853c9"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.153/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "a2e76cfaae697dfd53d64e66b8219b3e54c69204bfe415c8caf4d3a573d264ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.153/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bd5fd24e8eb56c84c47e964f8224935489a0425a915b5aad20a0d81219059686"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.153/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8a8da3353ab86214b2658a020d14fa540adbe88e557b503e44d1284fc193b104"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
