class OpenCodex < Formula
  desc "CLI tool to generate shell commands from natural language"
  homepage "https://github.com/codingmoh/open-codex"
  url "https://github.com/codingmoh/open-codex/releases/download/0.1.16/open-codex-macos.zip"
  sha256 "7a9f33d724d25ba38f5ebde093b0782b30e0e297703aae3c87ac293afd3020b6"
  license "MIT"

  def install
    bin.install "open-codex/open-codex"
  end

  def post_install
    system "#{bin}/open-codex", "--help"
  end
end