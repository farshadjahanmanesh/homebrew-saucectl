# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Saucectl is a command-line interface to run testrunner tests"
  homepage "https://saucelabs.com/"
  version "0.113.1-alpha.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.113.1-alpha.4/saucectl_0.113.1-alpha.4_mac_64-bit.tar.gz"
      sha256 "304c4a0cc31caf804496d5935376978e9a2d2246c9c1eb698c48d4bd871158c6"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.113.1-alpha.4/saucectl_0.113.1-alpha.4_mac_arm64.tar.gz"
      sha256 "c0afe60cd4bc4586fd32a07969736d4f8c027727696795b691996c33b8d505dc"

      def install
        bin.install "saucectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.113.1-alpha.4/saucectl_0.113.1-alpha.4_linux_64-bit.tar.gz"
      sha256 "404a57a46fbb86d88c531a5d41f726661a51da719b252409c84ba51fa223bfcd"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.113.1-alpha.4/saucectl_0.113.1-alpha.4_linux_arm64.tar.gz"
      sha256 "bc01766ab41ff1883ab5e60af6fe96d74db7b491469c50393d27100cec7ccb29"

      def install
        bin.install "saucectl"
      end
    end
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
