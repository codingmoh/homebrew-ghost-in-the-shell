class GhostInTheShell < Formula
    include Language::Python::Virtualenv
  
    desc "AI-powered terminal assistant that converts natural language to shell commands."
    homepage "https://github.com/codingmoh/ghost_in_the_shell"
    url "https://files.pythonhosted.org/packages/c5/de/fb89ae31371040577587ed30c323f5ee1d961db425896c84d87034f79bdb/ghost_in_the_shell-0.1.7.tar.gz"
    sha256 "dedb2eb96f827cf2c1eb99377f6dbbad8a87c725375db9c87e0c257f31850a03"
    license "MIT"
  
    depends_on "python@3.11"
  
    def install
      virtualenv_install_with_resources
    end
  
    test do
      system "#{bin}/ai", "--help"
    end
  end