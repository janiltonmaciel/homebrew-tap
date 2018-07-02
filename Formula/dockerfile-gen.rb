class DockerfileGen < Formula
  desc "Generator Dockerfile"
  homepage "https://github.com/janiltonmaciel/dockerfile-gen"
  url "https://github.com/janiltonmaciel/dockerfile-gen/releases/download/1.10.0/dockerfile-gen_1.10.0_macOS_amd64.tar.gz"
  version "1.10.0"
  sha256 "d09e19aee212909ca3cc3ec769618b2ed5c020e0891e92d8a3bcda2c90648eb9"

  def install
    bin.install "dockerfile-gen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dockerfile-gen --version")
  end
end
