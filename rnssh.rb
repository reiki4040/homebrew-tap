# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rnssh < Formula
  desc "Easy ssh to EC2"
  homepage "https://github.com/reiki4040/rnssh"
  version "0.5.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/reiki4040/rnssh/releases/download/v0.5.2/rnssh_darwin_arm64.tar.gz"
      sha256 "00433aba007c9b64eab48899a103565d66ed890e96e9f34128e05981198fafd6"

      def install
        bin.install "rnssh"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/reiki4040/rnssh/releases/download/v0.5.2/rnssh_darwin_x86_64.tar.gz"
      sha256 "bcbd917eb3f7e9fcc13cd6fc6ef971763462d0bdd9d86e68b4df3ad19cd6a306"

      def install
        bin.install "rnssh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/reiki4040/rnssh/releases/download/v0.5.2/rnssh_linux_arm64.tar.gz"
      sha256 "f1b96c847c85fb68a26e1e22cdd6c295b9af9d898382ffcf72f9fb359a325838"

      def install
        bin.install "rnssh"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/reiki4040/rnssh/releases/download/v0.5.2/rnssh_linux_x86_64.tar.gz"
      sha256 "30679f766b005516f8fe4de93466ca46a8ce3bf284f06cb98a9a169faf8431a4"

      def install
        bin.install "rnssh"
      end
    end
  end

  def caveats
    <<~EOS
      # rnssh need AWS access key for working.
      # Please set key/secret to AWS credentials (~/.aws/credentials)

      [default]
      aws_access_key_id=your_key_id
      aws_secret_access_key=your_secret

      # or environment variable for AWS connection.
      # (~/.bashrc, ~/.zshrc or other.)

      export AWS_ACCESS_KEY_ID=YOUR_AWS_ACCESS_KEY
      export AWS_SECRET_ACCESS_KEY=YOUR_AWS_SECRET_ACCESS_KEY

      # set default aws region.
      rnssh -init
    EOS
  end
end
