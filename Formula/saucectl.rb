# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "A command line interface to run testrunner tests."
  homepage "https://saucelabs.com/"
  version "0.5.5"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/saucelabs/saucectl-internal/releases/download/v0.5.5/saucectl_0.5.5_mac_64-bit.tar.gz"
    sha256 "ff75420f7eeb0d95dc8855d41ef4077bea0be6d2315c594762f146263eb53ab0"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl-internal/releases/download/v0.5.5/saucectl_0.5.5_linux_64-bit.tar.gz"
      sha256 "722617427a1d2ecf0c1c35537e5e5d92c4f9d35b28502233a24d1f80f74d00b6"
    end
  end
  
  depends_on "docker"

  def install
    bin.install "saucectl"
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
