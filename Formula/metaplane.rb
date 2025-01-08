class Metaplane < Formula
  desc "Metaplane CLI"
  homepage "https://github.com/metaplane/cli"
  version "0.1.2"
  depends_on arch: :arm64
  
  url "https://cli.metaplane.dev/spm/download/macos-arm64/metaplane", using: :nounzip
  sha256 "233fa676e5c717bf36f13086585c4b6b19baa404b0c4dbfa8ad0b879fd15c4aa"

  def install
    bin.install "metaplane"
  end

  test do
    system "#{bin}/metaplane", "--help"
  end
end