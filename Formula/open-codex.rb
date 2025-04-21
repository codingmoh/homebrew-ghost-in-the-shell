class OpenCodex < Formula
  include Language::Python::Virtualenv

  desc "AI-powered terminal assistant that converts natural language to shell commands"
  homepage "https://github.com/codingmoh/open-codex"
  url "https://files.pythonhosted.org/packages/f3/7a/129980c4f78a2cbc685f555d65732abb4aaa0cc1a9d39b17c49db9a6c49c/open_codex-0.1.11.tar.gz"
  sha256 "b65b00c8a880e1b930f5d0feca267cfbb97759efd1316c00814ab4312a4bef80"
  license "MIT"

  depends_on "python@3.11"
  depends_on "llama.cpp"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "\#{bin}/open-codex", "--help"
  end
end
