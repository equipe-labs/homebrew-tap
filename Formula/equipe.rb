class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.8.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "707e61ae5174f37adff1098d7a13f2b494bf2039e98cc4823c4cf6166bf8e379"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.8.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "51ba3027f62230d10df47250cbcd44796ab096d49b7ee926a0a269aaaebbbb0b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.8.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a23379cc476a53c50b44f948cd32206bfbd2b2074beff30b2ffa30aceb960d24"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.8.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "729bc03efc3331a22615c466312b2d0a8891eb863337911b74b342348a30c71c"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
