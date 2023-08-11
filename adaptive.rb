# typed: false
# frozen_string_literal: true

class Adaptive < Formula
  desc "Adaptive streamlines your infrastructure access and authorization"
  homepage "https://github.com/adaptive-scale/adaptivecli"
  version "v0.3.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.adaptive.live/v0.3.8/adaptive-macos-amd64-v0.3.8.tar.gz"
      sha256 "d3dc9b1cb5a6fc948f76070af24dfe71309e8bd3ed7a0ff3e0c25b0fb2d36b1d"

      def install
        bin.install "adaptive"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.adaptive.live/v0.3.8/adaptive_macos_arm64-v0.3.8.tar.gz"
      sha256 "f1c5f16783caafaeee49c51c048fd4fa8b6887f97ba2e9dca7569789006a223b"

      def install
        bin.install "adaptive"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://cli.adaptive.live/v0.3.8/adaptive-linux-amd64-v0.3.8.tar.gz"
      sha256 "4a1d8ca0943284cb2d3143daba3fc398e9a03289e14aa0938031cb928fc6105a"


      def install
        bin.install "adaptive"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.adaptive.live/release/adaptive-linux-arm64-$version.tar.gz"
      sha256 "48febc08bc96eb407d1eee98172548369b5ddee2fe3579ba9f12a52098a7367f"

      def install
        bin.install "adaptive"
      end
   end
  end
end
