# This file was generated by GoReleaser. DO NOT EDIT.
class Statiks < Formula
  desc "Fast, zero-configuration, static HTTP filer server."
  homepage "https://github.com/janiltonmaciel/statiks"
  version "0.7"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/janiltonmaciel/statiks/releases/download/0.7/statiks_0.7_darwin_amd64.tar.gz"
    sha256 "5c99610bc09b64c2a32064c0420f1690eb647e64a0b20915e712966b6d336ebe"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/janiltonmaciel/statiks/releases/download/0.7/statiks_0.7_linux_amd64.tar.gz"
      sha256 "2b442f75bc5ca99a78481e66a32c008cd4dd65170adeeb60c50b1ca4b3230149"
    end
  end

  def install
    bin.install "statiks"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/statiks --version")
  end
end
