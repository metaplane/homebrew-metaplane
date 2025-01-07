class Metaplane < Formula
  desc "Metaplane CLI"
  homepage "https://github.com/metaplane/cli"
  version "0.1.0"
  depends_on arch: :arm64
  
  url "https://cli.metaplane.dev/spm/download/macos-arm64/metaplane", using: :nounzip
  sha256 "8bdb8862d8f4594788e6bd08d2d48d3b193f761ff2b0113afec0909a97f62e78"

  def install
    bin.install "metaplane"
  end

  test do
    system "#{bin}/metaplane", "--help"
  end
end