# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rnsd < Formula
  desc "control AWS Service Discovery command"
  homepage "https://github.com/reiki4040/rnsd"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/reiki4040/rnsd/releases/download/v0.2.1/rnsd_Darwin_arm64.tar.gz"
      sha256 "d7aaa4165b97f8151a58f02b6e72d51a49cea0173fae04d9efe6d3ee5b4014e4"

      def install
        bin.install "rnsd"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/reiki4040/rnsd/releases/download/v0.2.1/rnsd_Darwin_x86_64.tar.gz"
      sha256 "cd5bb0fcec5869bb43a10adf09f7850a09f7d97b5e05f66d52bd1e15d86d7ef8"

      def install
        bin.install "rnsd"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/reiki4040/rnsd/releases/download/v0.2.1/rnsd_Linux_arm64.tar.gz"
      sha256 "ea246a45f56a9d4cc74ee839eb7fe9d917e987dbeb39312ff5cf4311658eab5d"

      def install
        bin.install "rnsd"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/reiki4040/rnsd/releases/download/v0.2.1/rnsd_Linux_x86_64.tar.gz"
      sha256 "791a79a87cfc8d15b3fa229204601440dcda3b75f5caa831aa8a3966ff436f4b"

      def install
        bin.install "rnsd"
      end
    end
  end
end
