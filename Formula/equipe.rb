class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.46.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.46.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "528062e8547b1ca3d8cc2660b32cf2649a393a342fc3d94e2a8907d862bee444"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.46.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "de441e6a594808c4d5a253d3a4fe43dadf75023100fc71b18bba7f8e99eab250"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.46.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "04cf9a05616bd6a77636fb454294b7016e07eff417b17da355371910cb44f4fe"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.46.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "acd401fad3b311c357411adb6fceea739e148e20b3135f0a46113c1f62cd8dee"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
