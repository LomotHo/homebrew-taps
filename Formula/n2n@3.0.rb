class N2nAT30 < Formula
  desc "n2n v3.0 for macOS"
  homepage "https://github.com/ntop/n2n"
  url "https://github.com/ntop/n2n/archive/3.0.tar.gz"
  sha256 "25fcabba7bfcf25f4c9cd7fecc7ce11de48beb0b0f3506053d8485604ea8f50d"
  depends_on "cmake"

  def install
    system "cmake . -DCMAKE_BUILD_TYPE=Release"
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
