# typed: false
# frozen_string_literal: true

class Adaptive < Formula
  desc "Adaptive streamlines your infrastructure access and authorization"
  homepage "https://github.com/adaptive-scale/adaptivecli"
  version "v0.4.9-beta3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.adaptive.live/v0.4.9-beta3/adaptive-macos-amd64-v0.4.9-beta3.tar.gz"
      sha256 "11d3949ff30d23b937252b07f629151fa435ddea3804b0cd307ee758b2d9b5d0"

      def install
        bin.install "adaptive"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.adaptive.live/v0.4.9-beta3/adaptive-macos-arm64-v0.4.9-beta3.tar.gz"
      sha256 "c787fc23431e32e48c7e72c2cd58f409071736babfa15cdbbec843c95dbd07ce"

      def install
        bin.install "adaptive"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://cli.adaptive.live/v0.4.9-beta3/adaptive-linux-amd64-v0.4.9-beta3.tar.gz"
      sha256 "59c6555e207e46b29d2caaa2238e65743f6fc9e47e8f1e28b7b657b4451d657b"


      def install
        bin.install "adaptive"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.adaptive.live/release/adaptive-linux-arm64-$version.tar.gz"
      sha256 "ef3ca0f6cdb526c4c6216db2fa438197296c8a54b21cc72cb1b76c3419e180c5"

      def install
        bin.install "adaptive"
      end
   end
  end
end
