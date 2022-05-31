# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Saucectl is a command-line interface to run testrunner tests"
  homepage "https://saucelabs.com/"
  version "0.99.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.99.3/saucectl_0.99.3_mac_64-bit.tar.gz"
      sha256 "eeb7ab643e221b39e0762fd9729422cd4290803f8dbd074b001480d80f2243b7"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.99.3/saucectl_0.99.3_mac_arm64.tar.gz"
      sha256 "cae6c97644c4a1eca2a4ba4f3619405d19aad659e5c977bbd030eef7c4329e93"

      def install
        bin.install "saucectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.99.3/saucectl_0.99.3_linux_arm64.tar.gz"
      sha256 "166e11d19f4ca2745a67b17d53232cd2846b86449f248c70317efce1d7604868"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.99.3/saucectl_0.99.3_linux_64-bit.tar.gz"
      sha256 "ee5afd6968bcb70e7d1e167dbdb8f5c2487d04236712c08fb7377acb73d942d0"

      def install
        bin.install "saucectl"
      end
    end
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
