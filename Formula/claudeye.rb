class Claudeye < Formula
  include Language::Python::Virtualenv

  desc "Measurement layer for self-improving AI coding harnesses"
  homepage "https://github.com/L2zz/claudeye"
  url "https://github.com/L2zz/claudeye/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "3fa0c7691919d126491d59edf5df3e2bba06d6c27da15f2e34445aa0b89f065b"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "claudeye", shell_output("#{bin}/claudeye --version")
  end
end
