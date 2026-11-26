class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.186"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.186/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "a6542192446af1a56167307bed64116b38ea8086eda9dcfee286e4518c2bcbae"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.186/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "3c6091dbf951e6b692009d4de79e3e6c5b056930d4ee373359b6a010f31b34ad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.186/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "34b1523b015dade81f5269679c9032c310922594fae53ab9410f12f31c6b0257"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.186/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2a5e7a05b22add509d09af4aafa57bc7d402705d4c6bf39166f10c2cf2c75fc5"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
