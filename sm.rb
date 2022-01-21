# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sm < Formula
  desc "AWS Secrets Manager CLI Tool"
  homepage "https://clokwork.net/sm/"
  version "0.1.0-8-ge10cff7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clok/sm/releases/download/v0.1.0-8-ge10cff7/sm_0.1.0-8-ge10cff7_darwin_arm64.tar.gz"
      sha256 "1fb924a69de47ba877c34a68f9daf2f061af71df59de91a6bd8866342fe439b2"

      def install
        bin.install "sm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/clok/sm/releases/download/v0.1.0-8-ge10cff7/sm_0.1.0-8-ge10cff7_darwin_amd64.tar.gz"
      sha256 "4daefd792996c9db628dfb8fb8f2816ac864665f2e524d2941b35c1b1b602519"

      def install
        bin.install "sm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/clok/sm/releases/download/v0.1.0-8-ge10cff7/sm_0.1.0-8-ge10cff7_linux_armv6.tar.gz"
      sha256 "7289f49d78422debfe12ff5d86d357ce796e29ec60188969f5f161d24a4926ea"

      def install
        bin.install "sm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/clok/sm/releases/download/v0.1.0-8-ge10cff7/sm_0.1.0-8-ge10cff7_linux_arm64.tar.gz"
      sha256 "d5dfbb019c03dd890b05d0fcdff1481c81eedf61b43c283a1b5f7b887581785e"

      def install
        bin.install "sm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/clok/sm/releases/download/v0.1.0-8-ge10cff7/sm_0.1.0-8-ge10cff7_linux_amd64.tar.gz"
      sha256 "aea0c0b14b21ac99a0309ad5b4fe2cd888891a388b9b250c2dcbe2877a6ed9f4"

      def install
        bin.install "sm"
      end
    end
  end

  test do
    system "#{bin}/sm --help"
  end
end
