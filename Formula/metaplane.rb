class Metaplane < Formula
  desc "Metaplane CLI"
  homepage "https://github.com/metaplane/cli"
  version "0.1.4"
  depends_on arch: :arm64
 
  url "https://cli.metaplane.dev/spm/download/macos-arm64/metaplane", using: :nounzip
  sha256 "5dd89f8693d30d17b02b66c323f5127e4c1c74c214b89031599931d1d70b921b"

  def install
    bin.install "metaplane"
  end

  test do
    system "#{bin}/metaplane", "--help"
  end
end