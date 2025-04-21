class OpenCodex < Formula
  include Language::Python::Virtualenv

  desc "AI-powered terminal assistant that converts natural language to shell commands"
  homepage "https://github.com/codingmoh/open-codex"
  url "https://files.pythonhosted.org/packages/.../open_codex-0.1.13.tar.gz"
  sha256 "<DEINE_SHA_HIER>"
  license "MIT"

  depends_on "python@3.11"
  depends_on "llama.cpp"

  def install
    venv = virtualenv_create(libexec, "python3.11")
    venv.pip_install buildpath
    venv.pip_install_and_link buildpath
  end

  test do
    system "#{bin}/open-codex", "--help"
  end
end
