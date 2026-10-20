class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.82.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.82.2/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "5bba6fc619af1d250a92012f9acb5513fbf3a8dc265cedee986106dfa9799eeb"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.82.2/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "29b75916eef616821d2196dd80785fc909623c92d8a17c7d1a8dffe090282fcd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.82.2/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "31abd6d0842934a16ae03e761745a7c9de1a3cf9df17db0ca8dfdd5d7582dfae"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.82.2/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ab4d4071b9dd9338a73eda244e598c77d46445dd2227dacc60550a81f2d549ea"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
