# typed: false
# frozen_string_literal: true

class Adaptive < Formula
  desc "Adaptive streamlines your infrastructure access and authorization"
  homepage "https://github.com/adaptive-scale/adaptivecli"
  version "v0.2.36-staging"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.adaptive.live/release/adaptive-macos-amd64-$version.tar.gz"
      sha256 "23ba464b03d0b11d0843c41c1ead1eb18e67bda909ed79154a2311b2eef2e683"

      def install
        bin.install "adaptive"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.adaptive.live/release/adaptive_macos_arm64_$version.tar.gz"
      sha256 "87b3993d71dec196faf25d17cbce87ee9b3dfdb595bbbb494313075f3b04144a"

      def install
        bin.install "adaptive"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://cli.adaptive.live/release/adaptive-linux-amd64-$version.tar.gz"
      sha256 "b5993966f6e4cfc6a61bbd78c7c2ac3cc780fe68fbab297268689d8f7fa74025"


      def install
        bin.install "adaptive"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.adaptive.live/release/adaptive-linux-arm64-$version.tar.gz"
      sha256 "a2740c4e3ca5ddea4cf1ac169d9bf4839f742ce117ad65c2c7c4a46ced28b795"

      def install
        bin.install "adaptive"
      end
   end
  end
end
