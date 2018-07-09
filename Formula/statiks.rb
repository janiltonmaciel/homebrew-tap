class Statiks < Formula
  desc "Generator Dockerfile"
  homepage "https://github.com/janiltonmaciel/statiks"
  url "https://github.com/janiltonmaciel/statiks/releases/download/0.2.0/statiks_0.2.0_macOS_amd64.tar.gz"
  version "0.2.0"
  sha256 "dac9d5bc23c03cc17474cbb0beffc2933d9f61cd01f551e727b944e62a931d6a"

  def install
    bin.install "statiks"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/statiks --version")
  end
end
