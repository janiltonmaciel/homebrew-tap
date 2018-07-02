class DockerfileGen < Formula
  desc "Generator Dockerfile"
  homepage "https://github.com/janiltonmaciel/dockerfile-gen"
  url "https://github.com///releases/download/1.9.0/dockerfile-gen_1.9.0_macOS_amd64.tar.gz"
  version "1.9.0"
  sha256 "5e1127bac499f36cc765c3967f6acd2d05f12bb248a46d15aec4fca837344490"

  def install
    bin.install "dockerfile-gen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dockerfile-gen --version")
  end
end
