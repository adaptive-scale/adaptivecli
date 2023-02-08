# typed: false
# frozen_string_literal: true

class Adaptive < Formula
  desc "Adaptive streamlines your infrastructure access and authorization"
  homepage "https://github.com/adaptive-scale/adaptivecli"
  version "0.2.32"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.adaptive.live/release/adaptive-macos-i386-0.2.32.tar.gz"
      sha256 "7c4caf2b1d9b65c952b360ca384fb2906e0c727ee3534fe81a0f7463cfcfd977"

      def install
        bin.install "adaptive"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.adaptive.live/release/adaptive-macos-arm64-0.2.32.tar.gz"
      sha256 "268667527b344888761fd962ff935e60ecc62ff07f00cfbfe3d0146481e69ce9"

      def install
        bin.install "adaptive"
      end
    end
  end

  # on_linux do
  #   if Hardware::CPU.intel?
  #     url ""
  #     sha256 ""

  #     def install
  #       bin.install "adaptive"
  #     end
  #   end
  #   if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
  #     url ""
  #     sha256 ""

  #     def install
  #       bin.install "adaptive"
  #     end
  #   end
  # end
end
