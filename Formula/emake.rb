# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Emake < Formula
  desc "你见过的最简单的 GCC/CLANG 项目构建工具"
  homepage ""
  url "https://github.com/LomotHo/emake/archive/3.6.9.tar.gz"
  sha256 "66d67952023205f8f2bc529ef5e73679070c4d75dc3e71b51b4cf2992df695ab"

  # depends_on "cmake" => :build

  def install
    bin.install "emake"

  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test emake`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
