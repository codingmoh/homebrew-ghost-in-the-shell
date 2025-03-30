class GhostInTheShell < Formula
    include Language::Python::Virtualenv
  
    desc "AI-powered terminal assistant that converts natural language to shell commands."
    homepage "https://github.com/codingmoh/ghost_in_the_shell"
    url "https://files.pythonhosted.org/packages/c5/de/fb89ae31371040577587ed30c323f5ee1d961db425896c84d87034f79bdb/ghost_in_the_shell-0.1.7.tar.gz"
    sha256 "abcfa6a9d4df344d1781bc2560b5e4cdcae08b39ed303063535e7e1e926a304a"
    license "MIT"
  
    depends_on "python@3.11"
  
    def install
      virtualenv_install_with_resources
    end
  
    test do
      system "#{bin}/ai", "--help"
    end
  end