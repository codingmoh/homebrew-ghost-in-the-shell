class OpenCodex < Formula
  desc     "CLI tool to generate shell commands from natural language"
  homepage "https://github.com/codingmoh/open-codex"
  url      "https://github.com/codingmoh/open-codex/releases/download/0.1.17/open-codex-macos.zip"
  sha256   "822bdaaaa23ab6b86867b472176a793b74fd338ff5141c4007ead0543d5852d0"
  license  "MIT"

  def install
    # Installiere den gesamten Ordner inkl. _internal, Python usw.
    prefix.install "open-codex"

    # Erstelle einen Symlink zu deiner CLI-Binary
    bin.install_symlink prefix/"open-codex/open-codex"
  end
end