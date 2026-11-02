class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.3/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "932a71e185dee4850e8ffce1707c3de6197a5524403c7eb9152dc4e652ee216f"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.3/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "7bba7c53826d91747fceedf5a95c42cacc232c59b740fc77c083a38878628aa1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.3/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a2893d2f9fc519c8d500ef0c66d3d2e4b20d8cecb9206ddef837362a6bc540ee"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.3/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c7d3ac379db796ab6ec27bc71d90b8c9746089d382c7baeac4071a5e5833bb0f"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
