class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.98.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.98.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "ffa39a7c831d6fbfa1b8d6ad090292b05e1f48b6f228e27e176a3ee749364d90"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.98.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "66292741da4a005544851e21eb4da89c965d58402e091caf76124e805cbcaf29"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.98.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e6ebabc8140eefb328030ebf4a5f48c98265a1d68e3511ae39f9cb1d1acc4b61"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.98.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7a67a5b32fead94dd7e1bfcbf0953900c258df63dc54a2c2dbec68d90bad95db"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
