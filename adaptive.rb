# typed: false
# frozen_string_literal: true

class Adaptive < Formula
  desc "Adaptive streamlines your infrastructure access and authorization"
  homepage "https://github.com/adaptive-scale/adaptivecli"
  version "v0.7.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.adaptive.live/v0.7.2/adaptive-macos-amd64-v0.7.2.tar.gz"
      sha256 "8ea4cc75bdb30121f829999560d15bfc606b5bc2256db5a0d11881ebc5489e86"

      def install
        bin.install "adaptive"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.adaptive.live/v0.7.2/adaptive-macos-arm64-v0.7.2.tar.gz"
      sha256 "fd55f30f3a3b7ffc1bf4c351ef28489ffc1ccde92dac374f37765786286d2e7e"

      def install
        bin.install "adaptive"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://cli.adaptive.live/v0.7.2/adaptive-linux-amd64-v0.7.2.tar.gz"
      sha256 "6adf0805317f707d78ad03d09d676e0ee036ec9c02b9ede0d29fab4c7977e399"


      def install
        bin.install "adaptive"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.adaptive.live/release/adaptive-linux-arm64-$version.tar.gz"
      sha256 "ea7df46e10f7160da1f603b595ff758b92ccec5852e3f41692457a3adffcb5eb"

      def install
        bin.install "adaptive"
      end
   end
  end
end
