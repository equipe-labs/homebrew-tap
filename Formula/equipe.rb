class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.137"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.137/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "cb4a69f6c5785b0cbecdef9ee58e7375bfcc7aa43d3ff0054798137d9adbe252"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.137/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "aa271abf4ef5341f314385ac7693711bcd19d74896fb0ab7765a44a40e21355d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.137/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "900be3c64849bd80c3f27a515cf7a5236559a3ba0594b7c8f712941a2705eb98"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.137/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f36cf27e4132d9c384c1ab75250104f0c03c3095f33103fd3bec967ed8d1fb63"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
