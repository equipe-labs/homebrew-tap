class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.33.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.33.1/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "34bd43b863c8194a115c5416e9538d8fa87952db6000f02fc3291550499d20f7"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.33.1/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "45cec3099586aa7ab26aaec194a113b3d1de73a1650a27d7884d71cc166dccdb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.33.1/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6c8d6b08d4ab9bf066a32a4bf91ea7dce8c03ba9d5544a7b07d8536dc844e377"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.33.1/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3b4bd40a1ef477166414b4635d9f6a50409192222c9fc38035c7f5bafd432c80"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
