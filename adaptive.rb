# typed: false
# frozen_string_literal: true

class Adaptive < Formula
  desc "Adaptive streamlines your infrastructure access and authorization"
  homepage "https://github.com/adaptive-scale/adaptivecli"
  version "v0.3.14"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.adaptive.live/v0.3.14/adaptive-macos-amd64-v0.3.14.tar.gz"
      sha256 "0d087c89d70412117187131063003ac48fe8ce3c1b47ed69fc239b52ffd8535b"

      def install
        bin.install "adaptive"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.adaptive.live/v0.3.14/adaptive-macos-arm64-v0.3.14.tar.gz"
      sha256 "c5e1e6b4db05464c63de006793361514670a24d840711291915b2b14613bf416"

      def install
        bin.install "adaptive"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://cli.adaptive.live/v0.3.14/adaptive-linux-amd64-v0.3.14.tar.gz"
      sha256 "ed4ae47b0eddc8e8527fd7d22372cd4bcbb44f208cffaf184916a2e521b54c1f"


      def install
        bin.install "adaptive"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.adaptive.live/release/adaptive-linux-arm64-$version.tar.gz"
      sha256 "28b6e548491801c480ad71497f870fdd5081a6c3b65ee12d1b658435b1c98215"

      def install
        bin.install "adaptive"
      end
   end
  end
end
