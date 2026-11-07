class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.65"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.65/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "9f1e34520216f192001be8466eda91104412acfd2b05732050bf6da6bdaf6e90"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.65/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "4c5b65236f06dc0edccd47e9e16be1ae39ead997b99847fb6ef5808eabe2dd92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.65/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "145de50f0e980bcf18a377742d59b9bd6f10ce1fa5a34ce8725f6a5e6b591511"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.65/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9b7eb3401863c4540b0719550ecdb58d3254d9471aa7a61abe84f5ced3073374"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
