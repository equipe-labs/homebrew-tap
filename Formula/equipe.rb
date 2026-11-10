class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.82"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.82/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "eb98da61e163947cf46a620fc4f72e0911ed27f253bff0ecc0a898975ef99b7e"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.82/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "be768599da8286362e56a5b1bc207aee25ff822f17ba26d139c828925e74a58e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.82/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2204ffe60e161aea879a86190bc94de1339c3bb9333c1d4d629ea5d610dc2a0e"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.82/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6f4024b57cf9a9a2d425f5ccbf84bb40ee084bb31865e0ccfe33150ba987ea90"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
