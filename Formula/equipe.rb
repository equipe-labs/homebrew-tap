class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.56.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.56.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "3cea31b2f425a7e907f5004efaac8bc2957c0428c9d907fcd94b31849cf46d3f"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.56.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "c2912d6285e845ed27314a16dc9e78b48267d0f11d5b47440d99c9da50571ba0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.56.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "02413a46b294c968831437f610b3eaf90c27297bbba2029993ce819018480fa5"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.56.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8c28c663bd9cfea4faa39707a2c54f48224edcd83179507029e251f839c62724"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
