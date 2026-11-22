class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.163"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.163/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "03c9329fec7cb155af7bfcd2a460a17ff1dfd2b25b64df4216501cb29244b949"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.163/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "d769a145bf7f995bfe7474c4e13c521041c79f0d2a57ede19e54f16ca1eef45b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.163/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8d1c901660eafaae786631785b54740fbff627f24c17631495865aa9ec3b4678"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.163/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "df94dc66fc374a1b0d6b4bc963c5d79c588619e7bc2fbcfd78d6d78f2275c00d"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
