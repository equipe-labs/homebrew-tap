class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.84.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.84.1/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "7383aebe9d7b1e03246d2239f21f0a3fdeef812d75b997905845631074267cf5"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.84.1/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "14dea49115d33652c570d86e9ca834de316e3e6bd29578afee7488f3273f4ee3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.84.1/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c0aad3fbbc12328798306ea7f150bf23cdfc8923328c73974d35ec4f3a806c8e"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.84.1/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2a9c45e469298f23ad53de0f43600eb810dd5f0cee364a096696625c60fcbc13"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
