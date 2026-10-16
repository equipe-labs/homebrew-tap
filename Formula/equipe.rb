class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.53.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.53.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "aaf089a76b7be56edf6467e43d6e3a04cca1e14d1b5eae557c17e673c8d87d52"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.53.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "f6480fed38889f84838fc7efd662eadf2e77a585e28f8b0fb427f97618fe60c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.53.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "67cc598816ffa92946c9a0afb5aa33b9805a570572a2ce2add2f1851b1e34d97"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.53.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3cf18a2a3d7ff4603779844967904154c429c0eaa31e300ca5d359682c0cb450"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
