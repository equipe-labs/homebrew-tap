class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.165"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.165/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "be97889afb53b46a7a1caaa1b081ac35e97587b42e96882848ada05fa953ebc9"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.165/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "14c78cc8800f21df6a5875c368602f58e61f1e3cf8c4ef3693b6cd04eb20c593"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.165/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "86436fc3947040312211b4d2a4a5dea493738911fae503eabc0caa758f89394b"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.165/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c141b36304c1ff0ec8d24e519dedd00e7a5866a5db462e4618533f14f8989ec8"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
