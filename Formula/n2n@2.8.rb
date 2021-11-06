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
    (etc/"n2n").mkpath
    etc.install "packages/etc/n2n/edge.conf.sample" => "n2n/edge.conf"
    etc.install "packages/etc/n2n/supernode.conf.sample" => "n2n/supernode.conf"
  end

  test do
    system "false"
  end
end
