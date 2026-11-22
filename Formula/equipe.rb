class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.164"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.164/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "7c0418c89572955bacf1d81ff6abf12f955f96c59afcf2c604a092ac962c7b17"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.164/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "baf56e4ce0a476da772544d39906509b2b0680f9717cdf9a20c671b610c9040e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.164/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d4bbbfbd92348efa5bd493c7abd6635b95fe399e82de35a9064e4aac89cb7fa0"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.164/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8b92fef26fefc457b775a93406118c3129d4a6f04f5e701f4f5d05fec44cdaf3"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
