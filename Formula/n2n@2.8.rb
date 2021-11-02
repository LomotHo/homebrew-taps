class N2nAT28 < Formula
  desc "n2n v2.8 for macOS"
  homepage ""
  url "https://github.com/ntop/n2n/archive/2.8.tar.gz"
  sha256 "ad9ab95a79dcf6b412c36489f50de54bb54417b5cea854eb54722b6cb8f0fd04"
  depends_on "cmake"

  def install
    system "cmake ."
    system "make"
    bin.install "edge"
    bin.install "supernode"
  end

  test do
    system "false"
  end
end
