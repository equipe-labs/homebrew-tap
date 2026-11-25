class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.174"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.174/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "cb12a551ba27ec2bca9393ef0340b7b665423aa09704dedfbb4bc45bae73c449"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.174/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "0144e268903d377c947b91050db17fbfb7872745fd3a60f69448b87dd9547529"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.174/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1f71b22c6ad3ce25f6fe952c30280f8df905145046363754507186bc76caec8d"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.174/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c62530ea0952b3e76b6c7adfe199bcfd3147165a53ccf6d0858f1388ba747b55"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
