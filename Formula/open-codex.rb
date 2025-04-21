class OpenCodex < Formula
  include Language::Python::Virtualenv

  desc "AI-powered terminal assistant that converts natural language to shell commands"
  homepage "https://github.com/codingmoh/open-codex"
  url "https://files.pythonhosted.org/packages/9b/99/739b4508c2fd97b6aac22eeb0aee37759b8a19c2254b3ce7570b21d2908d/open_codex-0.1.9.tar.gz"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "\#{bin}/open-codex", "--help"
  end
end
