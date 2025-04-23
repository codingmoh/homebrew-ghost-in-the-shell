class OpenCodex < Formula
  desc "CLI tool to generate shell commands from natural language"
  homepage "https://github.com/codingmoh/open-codex"
  url "https://github.com/codingmoh/open-codex/releases/download/0.1.16/open-codex-macos.zip"
  sha256 "0179d1c36c64e1fd40aecc216590ccdb0176c6ca09f6370a1a934b98c5e254f3"
  license "MIT"

  def install
    bin.install "open-codex"
  end

  def post_install
    system "#{bin}/open-codex", "--help"
  end
end