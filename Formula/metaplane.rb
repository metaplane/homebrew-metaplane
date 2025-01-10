class Metaplane < Formula
  desc "Metaplane CLI"
  homepage "https://github.com/metaplane/cli"
  version "0.1.3"
  depends_on arch: :arm64
  
  url "https://cli.metaplane.dev/spm/download/macos-arm64/metaplane", using: :nounzip
  sha256 "e61a5b4061a13eab149211ab361fb6c60b2a974dcfd44bfc3aeac2e9b2a864c3"

  def install
    bin.install "metaplane"
  end

  test do
    system "#{bin}/metaplane", "--help"
  end
end