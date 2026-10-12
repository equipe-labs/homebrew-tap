class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.1.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "21dbbf81b118168766d44722cb0f8be85fb7debfb9347f0df63346a0df132f0e"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.1.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "d7c36b7d179f36c2d4af52304287c851f17d4c9e93004118f68d0e9922c95062"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.1.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c65c1f55e96f0678893672a7745b2e9429ee78ac5de5a9ad4bb1256c8c33fb89"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.1.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d935770e98039099a1f8ac38b901fe3882dcdaae8df29014457f6851eda22280"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
