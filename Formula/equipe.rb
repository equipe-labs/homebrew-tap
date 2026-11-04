class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.34"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.34/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "03511926b2761dadedd48732e351778e869633d7f2f90015cb833da350ad2c0e"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.34/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "19434a0decc8910d4714ff7dc0f0fed2d336d48c5a1e10f2775f51771e9ad866"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.34/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4321840f3e4177806b9eb6caf642bb212371e435aa7358c5be0147b6c48e82a4"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.34/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1768cfa9d3a5a391a846993ffa20cf1721ad315171417450c7111c15c5acc72f"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
