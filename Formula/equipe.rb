class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.122"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.122/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "b942346de3a049954a546984b0b5dab8db19c601b90aace8824425f2af47ff36"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.122/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "a91763292a927b6670c1a9481eeb766a7349a5bce7de72d2032a28370b382349"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.122/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d07bf92103e6935ba219e8387f8dec53d0029ca7c1fce5c07558809aa7e722e0"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.122/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "04e7d063c4fb30045a05f3bed30a006dbeae483ef63e42aefcae1c757e748aab"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
