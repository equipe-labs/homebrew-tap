class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.86.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.86.1/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "b11f9094cbe476f2a06a88e3be90fecad14be6e1b36baecdea868636a5075926"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.86.1/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "12b54a64a271cc6d24efff952a9f496c53b8d64cfe381dc13cc8f10455c8ea08"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.86.1/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3c55e463b920591cbba058b9b11aefcbcbb4ad0448501aa79c2aa8e0eb2880f1"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.86.1/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dd39214cbccfdbc17d461c2ee18149968eb92c8d32c8609b7306507f3ed84a19"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
