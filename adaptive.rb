# typed: false
# frozen_string_literal: true

class Adaptive < Formula
  desc "Adaptive streamlines your infrastructure access and authorization"
  homepage "https://github.com/adaptive-scale/adaptivecli"
  version "v0.5.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.adaptive.live/v0.5.7/adaptive-macos-amd64-v0.5.7.tar.gz"
      sha256 "7bf3cd8aad1b83a7f0109476f1f1632410fdf310301e73f116173c3e2df200fb"

      def install
        bin.install "adaptive"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.adaptive.live/v0.5.7/adaptive-macos-arm64-v0.5.7.tar.gz"
      sha256 "45e63982ffd06c17c0f6035e83abbf7d3c01d2885863ba5ff1d642a7b82b1526"

      def install
        bin.install "adaptive"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://cli.adaptive.live/v0.5.7/adaptive-linux-amd64-v0.5.7.tar.gz"
      sha256 "f1739ed459d42f36539826e0e33dfe3cbb45d53e25d3be335b946bcb12305bb8"


      def install
        bin.install "adaptive"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.adaptive.live/release/adaptive-linux-arm64-$version.tar.gz"
      sha256 "f1ad1479a4d5b1087522559c589e53471e75a3abfad852c55c378b5ffda7df22"

      def install
        bin.install "adaptive"
      end
   end
  end
end
