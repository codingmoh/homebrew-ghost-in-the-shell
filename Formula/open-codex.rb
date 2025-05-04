class OpenCodex < Formula
  desc     "CLI tool to generate shell commands from natural language"
  homepage "https://github.com/codingmoh/open-codex"
  url      "https://github.com/codingmoh/open-codex/releases/download/0.1.19/open-codex-macos.zip"
  sha256   "deffb2ac9d50b5e69926c5ff57eefae2072a227becd0dc0a6fba882bb2df53a1"
  license  "MIT"

  def install
    libexec.install Dir["*"]  
    (bin/"open-codex").write <<~EOS
    #!/bin/bash
      exec "$(brew --prefix)/opt/open-codex/libexec/open-codex" "$@"
    EOS

    chmod "+x", bin/"open-codex"
  end
end