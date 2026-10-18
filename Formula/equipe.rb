class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.60.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.60.4/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "bb99f6c29ac46d8006a1922bbc4c551221981e6e2506e1f873b9f17ffe5dcdd3"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.60.4/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "e654e4260d55a594915be2422e5486e1b94e4f7f71d8c661b6c2d421d01ad48d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.60.4/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "38a330478b87c368ec52ec2f79f3e6f54accc077db78101e0f4e592a68d5c2c1"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.60.4/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6069dbcf65ae9b90714db02b152ee4184efdfad945127ad144dd032c6111d808"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
