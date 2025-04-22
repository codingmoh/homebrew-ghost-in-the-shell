class OpenCodex < Formula
  desc "CLI tool to generate shell commands from natural language"
  homepage "https://github.com/codingmoh/open-codex"
  url "https://github.com/codingmoh/open-codex/releases/download/0.1.15/open-codex-macos.zip"
  sha256 "cbd1f78e2af5477f0bb216419cd44f933a7e1aaa5c959fb74dcc1021f3cca1d2"
  license "MIT"

  def install
    bin.install "open-codex/open-codex"
  end

  def post_install
    system "#{bin}/open-codex", "--help"
  end
end