class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.138"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.138/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "32fe1d762a6a51a73a93cee35c5d944e86529853029ec08fd3a3564233679e6c"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.138/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "2167f5172f8f2a9b2eb383f8998783b92fe7d56b0f4ea8e254a89ee2e26818eb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.138/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "78a137002ff4cbfc35cfd6e56e8b4c0f5ae6b6b14af71552bd5e44bc88dae17f"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.138/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4835e70d3b2355af79049ea73d4d80480bd59f436916832d5acc72e62d68b04a"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
