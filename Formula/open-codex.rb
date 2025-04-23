class OpenCodex < Formula
  desc "CLI tool to generate shell commands from natural language"
  homepage "https://github.com/codingmoh/open-codex"
  url "https://github.com/codingmoh/open-codex/releases/download/0.1.16/open-codex-macos.zip"
  sha256 "5b195332f2bc97472fa537324b33029ab6a23eee800bd7042e655292551c117a"
  license "MIT"

  def install
    bin.install "open-codex/open-codex"
  end

  def post_install
    system "#{bin}/open-codex", "--help"
  end
end