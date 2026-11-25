class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.180"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.180/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "3e844ffb331046d74003316c3d6951d9914d0c2bd4de345256e95abc12310edd"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.180/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "f291702332bddba1b0ebdc407c05c923154d0c7ef18e48d7194a59ff46aabd95"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.180/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d68291e09f8a39224dfb74bbd50bd96774fe529c8d4c8701f8fd2cd141e44a2a"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.180/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2528c2cac2c5052e7ad80f3319d656d26f62a4d127f7fbd9f6c6a33de6ac10fc"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
