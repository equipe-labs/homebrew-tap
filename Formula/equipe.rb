class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.87.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.87.1/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "8571a2c73ff0b407cc08f7ccbeb0998e8743a964ddb09d1cbe8a4ddc6cfb4978"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.87.1/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "617fa72854e773da8dddca4e8752ccd26fad4756811342310bee9b5db2053d57"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.87.1/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8599f01488f384e237b8ae3a23d0a897cf3dfb0d1434c2c5d52b579279fa684d"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.87.1/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "91e925a73a2a7bccc2c4cea15f78afea3b31aea95f4789cb954c6eac04c79cbd"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
