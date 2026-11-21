class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.159"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.159/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "e537eca70ee03dd3f267e7484433bc44dcb1a4049f3a33fefe63e23c475ab7cd"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.159/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "65a9a557efb2665ef368936b060fb438a8291f8f093d2aaea314ea4b4f78de35"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.159/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5227964a810cba8a6e58c8eedb512d9bedf4c1d40b1be7b3df18b457f5cd9f04"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.159/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f7318160211e64dde6920a81684b9df05afcc7ddcc63d29c9ef58d1d6a38cee0"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
