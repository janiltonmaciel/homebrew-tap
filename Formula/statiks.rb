class Statiks < Formula
  desc "Generator Dockerfile"
  homepage "https://github.com/janiltonmaciel/statiks"
  url "https://github.com/janiltonmaciel/statiks/releases/download/0.3.0/statiks_0.3.0_macOS_amd64.tar.gz"
  version "0.3.0"
  sha256 "1d6df72ed4221d0f60d60ff1c1d3ad9b5b8c4f61856f3d00d606bfb61d2156bb"

  def install
    bin.install "statiks"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/statiks --version")
  end
end
