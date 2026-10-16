class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.55.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.55.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "94ed52cd9a22f355adfd150a02e95c89276cf574d6051ece9c48637690bded20"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.55.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "b52a3a5fc28dd7ebc385f93c1720f0762c47ffaae13de7333707540b64f348e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.55.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "259a0e919207df806cadeeb48c72991d1f8bffde655bc757a32f36d4220d79d3"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.55.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a86da6b24c0aa710b988f9f9d0e8ea7546a8005d3b6d6c931589aaba72db1814"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
