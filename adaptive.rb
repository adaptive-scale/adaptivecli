# typed: false
# frozen_string_literal: true

class Adaptive < Formula
  desc "Adaptive streamlines your infrastructure access and authorization"
  homepage "https://github.com/adaptive-scale/adaptivecli"
  version "v0.5.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.adaptive.live/v0.5.0/adaptive-macos-amd64-v0.5.0.tar.gz"
      sha256 "4ba16f4d83a96ea020b8dc842b755242be6abc64898334793a2ce0e5cae805bd"

      def install
        bin.install "adaptive"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.adaptive.live/v0.5.0/adaptive-macos-arm64-v0.5.0.tar.gz"
      sha256 "4dbbbdfd4be884030b37856ddfa149cf12fd27d6f4d25ee3b03dc45c29b13b07"

      def install
        bin.install "adaptive"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://cli.adaptive.live/v0.5.0/adaptive-linux-amd64-v0.5.0.tar.gz"
      sha256 "83a5b24f1b73565392beed4e6e37406d4e32618abec0ff4b20759c6911843ee7"


      def install
        bin.install "adaptive"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.adaptive.live/release/adaptive-linux-arm64-$version.tar.gz"
      sha256 "d7c10e1b9b066fcc3a76ca15bd7900de72ff6f04e86e011c06c86192e168b957"

      def install
        bin.install "adaptive"
      end
   end
  end
end
