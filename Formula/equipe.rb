class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.169"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.169/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "3d9ae1740b4dcdceea0df815bae5a19ba559b217c144052c990937862b84fb90"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.169/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "f6a916a2895e8f83cfe223e7c9852f5e654fe92d6d9c6acc0a67ee632c92c368"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.169/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5bfdad5b3e038583c965ba2bf90b8fac93e5e4fb9896c37dbb92a60ebb1d9ae4"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.169/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5cb40eca0c2caa688ec558417ab6d63dca4ddd86076e6e949c90ea8ed69af10f"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
