class Metaplane < Formula
  desc "Metaplane CLI"
  homepage "https://github.com/metaplane/cli"
  version "0.1.1"
  depends_on arch: :arm64
  
  url "https://cli.metaplane.dev/spm/download/macos-arm64/metaplane", using: :nounzip
  sha256 "7d8fd363a0ec8eef75a40c5918badbfa717aa2f5b6c9ce42ad3391b434101423"

  def install
    bin.install "metaplane"
  end

  test do
    system "#{bin}/metaplane", "--help"
  end
end