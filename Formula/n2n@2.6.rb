class N2n < Formula
  desc "n2n v2.6 for macOS"
  homepage ""
  url "https://github.com/ntop/n2n/archive/2.6.tar.gz"
  sha256 "d08a75cba32394e7077d8b3afdef913d61cdf5911141effb5cd3ee2d79c66bc2"
  depends_on "automake"

  def install
    system "./autogen.sh"
    system "./configure"
    system "make"
    bin.install "edge"
    bin.install "supernode"
  end

  test do
    system "false"
  end
end
