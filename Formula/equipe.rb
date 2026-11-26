class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.193"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.193/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "1373ed774db78d6db611088c4bff1809509c1b5f80335ed2504e448d7bff6ca6"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.193/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "5f7da909b78b9b72061576842e8222a176bcc1b9ab442ba935e1857371c71818"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.193/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "296e53a58ebc8c82f72f24eef69894d09455f3632d537dd1cfea348698a17bd9"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.193/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "aef60f436b7790a2f135e1b0fdd66b375a9062004a1bfe9f154f0c518b6d3865"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
