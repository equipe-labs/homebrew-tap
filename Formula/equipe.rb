class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.5/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "4279d1168f8e0f44a124878d368b87c6520f6e8514c70ff59270be59b6a66e53"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.5/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "6871166abb4c7568a5a304a8929522c0caaeb131836b595616cd6423cc66a7a8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.5/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "43362e3610dbf715e94058b8f670e00d6edba30cc6279bd873766d3395ac6d72"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.5/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a13bd63d0ab3acfa37892c39b08d7b2b89680fdfd3c8e954f63110f4506da820"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
