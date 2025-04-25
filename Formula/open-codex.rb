class OpenCodex < Formula
  desc     "CLI tool to generate shell commands from natural language"
  homepage "https://github.com/codingmoh/open-codex"
  url      "https://github.com/codingmoh/open-codex/releases/download/0.1.18/open-codex-macos.zip"
  sha256   "dfaed930e1acab739925d102ba4fd9373e70b2391bbd3910e95faa04f68ba458"
  license  "MIT"

  def install
    libexec.install Dir["*"]  
    (bin/"open-codex").write <<~EOS
      #!/bin/bash
      exec "/opt/homebrew/opt/open-codex/libexec/open-codex" "$@"
      EOS

    chmod "+x", bin/"open-codex"
  end
end