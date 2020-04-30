# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Homebrew Formulae to saucectl binaries"
  homepage "https://saucelabs.com"
  version "0.3.10"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/saucelabs/saucectl/releases/download/v0.3.10/saucectl_0.3.10_mac_64-bit.tar.gz"
    sha256 "52d4dbbab650b2e8ec0c81dcd49d3acca5a38d49f27f64db79e98a68cfa6ef63"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.3.10/saucectl_0.3.10_linux_64-bit.tar.gz"
      sha256 "e7d8ef92e9adec7295a7804d10a14a9ad8eac0b27432d448bc9a61432aa9baa4"
    end
  end

  def install
    bin.install "saucectl"
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
