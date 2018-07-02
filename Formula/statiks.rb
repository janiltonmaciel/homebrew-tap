class Statiks < Formula
  desc "Generator Dockerfile"
  homepage "https://github.com/janiltonmaciel/statiks"
  url "https://github.com/janiltonmaciel/statiks/releases/download/0.1.0/statiks_0.1.0_macOS_amd64.tar.gz"
  version "0.1.0"
  sha256 "f940dc356284c023fc5b51dee397b0b5678a4677c3d76678f611491f7bccde57"

  def install
    bin.install "statiks"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/statiks --version")
  end
end
