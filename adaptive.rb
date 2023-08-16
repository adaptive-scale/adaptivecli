# typed: false
# frozen_string_literal: true

class Adaptive < Formula
  desc "Adaptive streamlines your infrastructure access and authorization"
  homepage "https://github.com/adaptive-scale/adaptivecli"
  version "v0.3.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.adaptive.live/v0.3.8/adaptive-macos-amd64-v0.3.8.tar.gz"
      sha256 "4bdc7c51f66bbc2fb8448eca21235127ecc6da41f1e1fc09626170749f9fa0ce"

      def install
        bin.install "adaptive"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.adaptive.live/v0.3.8/adaptive-macos-arm64-v0.3.8.tar.gz"
      sha256 "847c0fe77b30ef2331de4e8f7a9e568f77ee4a43b8e8f1246cbd22ce6d154157"

      def install
        bin.install "adaptive"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://cli.adaptive.live/v0.3.8/adaptive-linux-amd64-v0.3.8.tar.gz"
      sha256 "4576252337580d3429e57128568cb20a139299a47e362cbe4e47eed9c34b30bb"


      def install
        bin.install "adaptive"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.adaptive.live/release/adaptive-linux-arm64-$version.tar.gz"
      sha256 "471ec289fef4c5b991e4a8d8336ae7fe48382d7f26adeb3b913246ce12386520"

      def install
        bin.install "adaptive"
      end
   end
  end
end
