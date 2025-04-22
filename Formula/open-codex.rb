class OpenCodex < Formula
  desc "CLI tool to generate shell commands from natural language"
  homepage "https://github.com/codingmoh/open-codex"
  url "https://github.com/codingmoh/open-codex/releases/download/0.1.15/open-codex-macos.zip"
  sha256 "88e656c1f56c2e191711cc459a1ba5d6c8544fd80fd65c764e035a51b1143403"
  license "MIT"

  def install
    bin.install "open-codex"
  end

  def post_install
    system "#{bin}/open-codex", "--help"
  end
end