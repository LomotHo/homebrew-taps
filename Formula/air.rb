# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Air < Formula
  desc "☁️ Live reload for Go apps"
  homepage "https://github.com/cosmtrek/air"
  url "https://github.com/cosmtrek/air/releases/download/v1.27.3/air_1.27.3_darwin_amd64.tar.gz"
  sha256 "d54d6561a8598c8fd4dae598fccdf9485ac40e985fded4e32638714543f82ce8"

  def install
    bin.install "air"
  end

  test do
    system "false"
  end
end
