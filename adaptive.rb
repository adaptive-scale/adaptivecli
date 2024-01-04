# typed: false
# frozen_string_literal: true

class Adaptive < Formula
  desc "Adaptive streamlines your infrastructure access and authorization"
  homepage "https://github.com/adaptive-scale/adaptivecli"
  version "v0.3.15-alpha"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.adaptive.live/v0.3.15-alpha/adaptive-macos-amd64-v0.3.15-alpha.tar.gz"
      sha256 "ae949fb6ee0b7b88bcd9900a16911c4344bef485245495fdb6965823cb909149"

      def install
        bin.install "adaptive"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.adaptive.live/v0.3.15-alpha/adaptive-macos-arm64-v0.3.15-alpha.tar.gz"
      sha256 "94f1536e57c67543574a228742712135065d58e7bc5483ba0d60d90386882396"

      def install
        bin.install "adaptive"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://cli.adaptive.live/v0.3.15-alpha/adaptive-linux-amd64-v0.3.15-alpha.tar.gz"
      sha256 "97e07115f93dc39947fb9124af3fdd5b7070c71a2a8549292220e17f2b035d7a"


      def install
        bin.install "adaptive"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.adaptive.live/release/adaptive-linux-arm64-$version.tar.gz"
      sha256 "f2cfd2cb9072d7be3225f3c3b17643e0f0ae0aff333059b660553688a04652a3"

      def install
        bin.install "adaptive"
      end
   end
  end
end
