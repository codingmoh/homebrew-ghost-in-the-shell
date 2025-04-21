class OpenCodex < Formula
  include Language::Python::Virtualenv

  desc "AI-powered terminal assistant that converts natural language to shell commands"
  homepage "https://github.com/codingmoh/open-codex"
  url "https://files.pythonhosted.org/packages/89/8c/ae00d51ec692eb6f7c400552c42fd1e0e38547e47e2b097c83626707cc99/open_codex-0.1.13.tar.gz"
  sha256 "9583925f290fd5061eda86e9b3b2ddb3dccfe549ce12428057f6dec59d56ccd6"
  license "MIT"

  depends_on "python@3.11"
  depends_on "llama.cpp"

  def install
    venv = virtualenv_create(libexec, "python3.11")
    venv.pip_install_and_link buildpath
  end

  test do
    system "#{bin}/open-codex", "--help"
  end
end
