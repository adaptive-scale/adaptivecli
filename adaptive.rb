# typed: false
# frozen_string_literal: true

class Adaptive < Formula
  desc "Adaptive streamlines your infrastructure access and authorization"
  homepage "https://github.com/adaptive-scale/adaptivecli"
  version "v0.4.9-beta4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.adaptive.live/v0.4.9-beta4/adaptive-macos-amd64-v0.4.9-beta4.tar.gz"
      sha256 "0067b790373b0282f98fd147b8e6e971d242ab3d66c6a5869e179783679eb837"

      def install
        bin.install "adaptive"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.adaptive.live/v0.4.9-beta4/adaptive-macos-arm64-v0.4.9-beta4.tar.gz"
      sha256 "18d918b1df5aa537cc122e50435ec0233f12606e98662c7b11afed94ccdf71f8"

      def install
        bin.install "adaptive"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://cli.adaptive.live/v0.4.9-beta4/adaptive-linux-amd64-v0.4.9-beta4.tar.gz"
      sha256 "1b6145b424966b8bd11221456c8fb13cb08225a3889edecd405f5c739df2d30b"


      def install
        bin.install "adaptive"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.adaptive.live/release/adaptive-linux-arm64-$version.tar.gz"
      sha256 "30d782ba2232f883dd96b0bddbcf6c335778d7dc88172064ea8abba36a1e22b4"

      def install
        bin.install "adaptive"
      end
   end
  end
end
