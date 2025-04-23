class OpenCodex < Formula
  desc "CLI tool to generate shell commands from natural language"
  homepage "https://github.com/codingmoh/open-codex"
  url "https://github.com/codingmoh/open-codex/releases/download/0.1.17/open-codex-macos.zip"
  sha256 "9c7d52b8808b3641e248860775f9cc3bcabf2bb7a577cfe12e7a9c23aae12de4"
  license "MIT"

  def install
    bin.install "open-codex"
  end

  def post_install
    system "#{bin}/open-codex", "--help"
  end
end