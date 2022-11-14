# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Saucectl is a command-line interface to run testrunner tests"
  homepage "https://saucelabs.com/"
  version "0.113.2-beta4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.113.2-beta4/saucectl_0.113.2-beta4_mac_arm64.tar.gz"
      sha256 "964962f73dfd9cdc3baaa8e305f15519e926764b1ef1a3ebd7aed21cdc1fd4d2"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.113.2-beta4/saucectl_0.113.2-beta4_mac_64-bit.tar.gz"
      sha256 "88657b19a61a35d6b72f71d69e51c14243af7e00075a2abfb9dece803ddd5c7b"

      def install
        bin.install "saucectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.113.2-beta4/saucectl_0.113.2-beta4_linux_64-bit.tar.gz"
      sha256 "944e1afcbd80744f8bcf0bd7c21be6cca5503bee4eee196ce64c1bb8ff04ec29"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.113.2-beta4/saucectl_0.113.2-beta4_linux_arm64.tar.gz"
      sha256 "e9b0cc3298ebb7104e7dc74df3d9ec1819ab9b40fdaa2a00794ac850d70c2825"

      def install
        bin.install "saucectl"
      end
    end
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
