# This file was generated by GoReleaser. DO NOT EDIT.
class Statiks < Formula
  desc "Generator Dockerfile"
  homepage "https://github.com/janiltonmaciel/statiks"
  url "https://github.com/janiltonmaciel/statiks/releases/download/0.5/statiks_0.5_macOS_amd64.tar.gz"
  version "0.5"
  sha256 "979d57db0a817539fd4dc5102a54bda01f56cc04fe17f280ef6adcac14c3823e"

  def install
    bin.install "statiks"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/statiks --version")
  end
end
