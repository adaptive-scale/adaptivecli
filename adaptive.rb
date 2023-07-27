# typed: false
# frozen_string_literal: true

class Adaptive < Formula
  desc "Adaptive streamlines your infrastructure access and authorization"
  homepage "https://github.com/adaptive-scale/adaptivecli"
  version "v0.3.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.adaptive.live/release/adaptive-macos-amd64-$version.tar.gz"
      sha256 "780d9aa76bffd83bd4e81bb275bd1e50a806bb01ff05585f32b01f5fe598ea8d"

      def install
        bin.install "adaptive"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.adaptive.live/release/adaptive_macos_arm64_$version.tar.gz"
      sha256 "3c811a04ec4d183c797de964495a8853e95bd799eaeca6dfa10190c30608d6e7"

      def install
        bin.install "adaptive"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://cli.adaptive.live/release/adaptive-linux-amd64-$version.tar.gz"
      sha256 "9f84eb078b83f8383b0b404cadb33dbff305847c00b6ef5566f7dde6d59ff1d6"


      def install
        bin.install "adaptive"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.adaptive.live/release/adaptive-linux-arm64-$version.tar.gz"
      sha256 "e7b903bee669dff91d5f29039634ddbef9930990fd41403221123e940ad0001f"

      def install
        bin.install "adaptive"
      end
   end
  end
end