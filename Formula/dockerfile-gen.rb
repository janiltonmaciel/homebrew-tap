class DockerfileGen < Formula
    desc "Generator Dockerfile"
    homepage "https://github.com/janiltonmaciel/dockerfile-gen"
    url "https://github.com/janiltonmaciel/dockerfile-gen/releases/download/1.8.0/dockerfile-gen_1.8.0_macOS_amd64.tar.gz"
    version "1.8.0"
    sha256 "aea9bd6165042c14d1b0d2246c7467ae393cd84bdb3b26d8ddbea40bbda870b6"
  
    def install
      bin.install "dockerfile-gen"
    end
  
    test do
      assert_match version.to_s, shell_output("#{bin}/dockerfile-gen --version")
    end
  end