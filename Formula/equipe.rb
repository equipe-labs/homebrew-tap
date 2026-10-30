class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.87.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.87.2/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "2814569d7e3dad6514372cf26b50dc51165f835f7157f5f4ec3c0444a615c33a"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.87.2/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "8fa7bdb8a83d481534c82ccaabc18f5db716e39a942e6b9d2f118c71ec29c59b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.87.2/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "66bf947d027001cb30cebe779260ef2b35c48c9e22b8d63c7f8e06b28f758686"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.87.2/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "92477d2c9035732eba25ef8408dc0fe680aa2956eeee3fd772f68696e040163d"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
