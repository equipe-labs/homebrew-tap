class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.40.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.40.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "12a6aa226fbe95d8ad937bc22ac6b8e256d6b21cb771a29f614f84ecd5f81003"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.40.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "d3d3733358f27444cf76d13cb87146049de84162ecceb0a10baabf700dd68c49"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.40.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1e3ef94f378a68e6b6d13aad982e657309f4cbece5f1e1c7d14dcada49079116"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.40.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "81a7d42d381042e3802f939629bd02aa4f723d2fbe0967c440190e59c1158845"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
