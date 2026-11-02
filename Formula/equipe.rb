class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.2/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "7a927db70811151ee3855ac8997b03622cbcaed1185a7317f5e35c4de53a60d7"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.2/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "03fa82bdaf3f119f97430f39db91446f9eb2cb0412f998a310dcaf653680809d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.2/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "15508efbc536d53938b8e15094193075c0ce473f69f9d2d9ff590752ad7d1c9d"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.2/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d6f1bf6ff6b1eb0239dab2f740408bb89318b15eec2135fc364acb1ad97da89a"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
