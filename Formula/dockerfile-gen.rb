class DockerfileGen < Formula
    desc "Generator Dockerfile"
    homepage "https://github.com/janiltonmaciel/dockerfile-gen"
    url "https://github.com/janiltonmaciel/dockerfile-gen/releases/download/1.8.0/dockerfile-gen_1.8.0_macOS_amd64.tar.gz"
    version "1.8.0"
    sha256 "d21307fcfd0873edf3887b84f0fd4cfec8eebfb3cad26bcb0ab8b34130c89060"
  
    def install
      bin.install "dockerfile-gen"
    end
  
    test do
      assert_match version.to_s, shell_output("#{bin}/dockerfile-gen --version")
    end
  end