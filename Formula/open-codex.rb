class OpenCodex < Formula
  desc     "CLI tool to generate shell commands from natural language"
  homepage "https://github.com/codingmoh/open-codex"
  url      "https://github.com/codingmoh/open-codex/releases/download/0.1.17/open-codex-macos.zip"
  sha256   "62852ce7464c630f13d067de964fb180131d399186b109878998ef6096e140a0"
  license  "MIT"

  def install
    # Installiere den gesamten Ordner inkl. _internal, Python usw.
    prefix.install "open-codex"

    # Erstelle einen Symlink zu deiner CLI-Binary
    bin.install_symlink prefix/"open-codex/open-codex"
  end
end