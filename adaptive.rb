# typed: false
# frozen_string_literal: true

class Adaptive < Formula
  desc "Adaptive streamlines your infrastructure access and authorization"
  homepage "https://github.com/adaptive-scale/adaptivecli"
  version "v0.3.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.adaptive.live/v0.3.4/adaptive-macos-amd64-v0.3.4.tar.gz"
      sha256 "686d25148130c66c7c3fcc153b0681b78f4e23f216c910f043e0af4a6d5595f1"

      def install
        bin.install "adaptive"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.adaptive.live/v0.3.4/adaptive-macos-arm64-v0.3.4.tar.gz"
      sha256 "d1fe9977cb74012a3ffacce53eafa819cfc90ceacbd2cb25f07d19895b9364b2"
      def install
        bin.install "adaptive"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://cli.adaptive.live/v0.3.4/adaptive-linux-amd64-v0.3.4.tar.gz"
      sha256 "fd4e6c6ceb1c6719cb74898247ec261ec6852ff8335adf2bfd2b95254c5a2d32"


      def install
        bin.install "adaptive"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.adaptive.live/release/adaptive-linux-arm64-$version.tar.gz"
      sha256 "9522fb08af2b2ce10fec9ac216ee80da80a62b68d8f3cb4c433f54b7fb2771df"

      def install
        bin.install "adaptive"
      end
   end
  end
end
