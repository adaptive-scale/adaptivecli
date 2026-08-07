# typed: false
# frozen_string_literal: true

class Adaptive < Formula
  desc "Adaptive streamlines your infrastructure access and authorization"
  homepage "https://github.com/adaptive-scale/adaptivecli"
  version "v0.7.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.adaptive.live/v0.7.2/adaptive-macos-amd64-v0.7.2.tar.gz"
      sha256 "02fd20a79dcdf7e56188c784e9b044dea3fe6d3af6baa6ef272da09eeb9e34ea"

      def install
        bin.install "adaptive"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.adaptive.live/v0.7.2/adaptive-macos-arm64-v0.7.2.tar.gz"
      sha256 "6e473515c39391fa566139698fb8f44968871da91cb891693d778c7cdf0e5a79"

      def install
        bin.install "adaptive"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://cli.adaptive.live/v0.7.2/adaptive-linux-amd64-v0.7.2.tar.gz"
      sha256 "f672301fc6d6816fa5377b30dd3d8317d7b858fc3791c99e9b5e0ad459b0533a"


      def install
        bin.install "adaptive"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.adaptive.live/release/adaptive-linux-arm64-$version.tar.gz"
      sha256 "5cb12fa09478f59f08d970bf44aed3413680d7e179a1538219c4d881de6e8409"

      def install
        bin.install "adaptive"
      end
   end
  end
end
