# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Saucectl is a command-line interface to run testrunner tests"
  homepage "https://saucelabs.com/"
  version "0.67.1"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.67.1/saucectl_0.67.1_mac_64-bit.tar.gz"
      sha256 "4ed16564252dd444dd5c2047df1cc9c0ff6f7f7945fffd57d7ae8763ecf986e7"
    end
    if Hardware::CPU.arm?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.67.1/saucectl_0.67.1_mac_arm64.tar.gz"
      sha256 "e7295a77ab87e04395bab281a098037e07edc3447278fc3775552f76a8457f75"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.67.1/saucectl_0.67.1_linux_64-bit.tar.gz"
      sha256 "981a52204cd4161a0287cb5ba6806942222cb35dd3f41b7998759109d0d3fc04"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.67.1/saucectl_0.67.1_linux_arm64.tar.gz"
      sha256 "7e9f1d032696331bc48b9279ca26218f65747b012f0bc815549c48776c7c3e58"
    end
  end

  def install
    bin.install "saucectl"
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
