class Statiks < Formula
  desc "Generator Dockerfile"
  homepage "https://github.com/janiltonmaciel/statiks"
  url "https://github.com/janiltonmaciel/statiks/releases/download/0.4/statiks_0.4_macOS_amd64.tar.gz"
  version "0.4"
  sha256 "37b461ae9dfd0ab273eaf5e89aa1dfbfd7efcf913864c3ae1ca40fb0ba413425"

  def install
    bin.install "statiks"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/statiks --version")
  end
end
