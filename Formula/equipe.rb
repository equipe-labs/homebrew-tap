class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.80"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.80/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "58297887dcc7f4c6e2062950246894db6fa4894f5de6fbf4449f9a5f247d41aa"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.80/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "15b90ba5c1bbde81f11752fb7ad94260bf208a78988f45b259f9b3a16a139a30"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.80/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "14148b7cfcd52ed50a6e942e0db0d49b2957555dd0ddfdfdaeebd48c21d849e3"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.80/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d4deeb70325258f1ae0d76947c1a0e95f802ef2f459cec0de74540874c1b02d0"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
