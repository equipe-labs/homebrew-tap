class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.73"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.73/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "7854c73742dc3aa236167a8b2e395c982443b356841163a1b5c5b57c6cee3444"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.73/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "d7fd6a53b36a36725606c5f9ae9520de1951728b0fd9663f37fcb60dafa612f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.73/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ed391df8d0fefc2447900409e00191a80b85cf9effccfa25c0374dfddf3129e3"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.73/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f730d2239ebdebb54cb6a44658ab0cefa0deb79bff273ee4e72069d131ea7d7b"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
