class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.133"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.133/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "f300f6061f1654a62bb9735f59389ea5438354d1e5991557a873416daba02331"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.133/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "654c307e5a08f8f24e2bd93ea64acb6a9fe5ccd553e5d84659b909d3029def3d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.133/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "16e050ff794ab362587261894c6f96fe3b907b457b977c49ab2c93387074f5ce"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.133/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "60871624de6cb90629c6115f0bad5a5140bcb6235b488290b7bb63e1f2b14243"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
