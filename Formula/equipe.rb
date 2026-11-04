class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.23/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "eba3f23d8634d608865a397deb23821ebefbe04f126c48ebb57b276f1dad6069"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.23/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "016effefcfe44c749f7ed049ff5dba613a66b2c49eb7338c389452cfe8db6d3a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.23/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e505ce3978be813c2e074602fb1a3722263c4e9a407d02963549581b464ba83e"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.23/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b84c3e14b424a2088c6dde50deb68451e7713d65a75296e48b4c4133aa427d30"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
