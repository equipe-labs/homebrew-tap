class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.7.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "e968d1a43131951be76b0dd19c59acc3a762c9f46523ddec0ac8162262814412"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.7.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "1653eff95648df1154e81f9c006fd15877fe2bb4f21ed5a468f918925e5fae85"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.7.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a293f970ed64f674cbc7dceb18bab07b29accc4cdcb0ae269fbbb8fa11ff0674"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.7.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "84da993dbddd4596c40adb7750f40d5ed5d6865de76ea33b21492d9d01bb131d"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
