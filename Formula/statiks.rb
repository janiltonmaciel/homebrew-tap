# This file was generated by GoReleaser. DO NOT EDIT.
class Statiks < Formula
  desc "Fast, zero-configuration, static HTTP filer server."
  homepage "https://github.com/janiltonmaciel/statiks"
  version "0.10"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/janiltonmaciel/statiks/releases/download/0.10/statiks_0.10_darwin_amd64.tar.gz"
    sha256 "fbd165e772b560757fb514a26adcb5249721c76a682cf9467c99f493bffa6e36"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/janiltonmaciel/statiks/releases/download/0.10/statiks_0.10_linux_amd64.tar.gz"
      sha256 "41372cfc42745cacc6ca19ddb8e956a1f1bfe0409aafc6f60b7b0b7d13f06764"
    end
  end

  def install
    bin.install "statiks"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/statiks --version")
  end
end
