# This file was generated by GoReleaser. DO NOT EDIT.
class Statiks < Formula
  desc "Fast, zero-configuration, static HTTP filer server."
  homepage "https://github.com/janiltonmaciel/statiks"
  version "1.0.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/janiltonmaciel/statiks/releases/download/v1.0.0/statiks_1.0.0_darwin_amd64.tar.gz"
    sha256 "710d30a65d9594ee9413001443b85d7532a08e5037288d3f1f14392c1f37a1c4"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/janiltonmaciel/statiks/releases/download/v1.0.0/statiks_1.0.0_linux_amd64.tar.gz"
      sha256 "5183ddda60e8a2e5eda5ce3997443db42d36777ceab121332f9f545cd6061bad"
    end
  end

  def install
    bin.install "statiks"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/statiks --version")
  end
end
