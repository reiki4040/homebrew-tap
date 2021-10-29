# This file was generated by GoReleaser. DO NOT EDIT.
class Rnssh < Formula
  desc "Easy ssh to EC2"
  homepage "https://github.com/reiki4040/rnssh"
  version "0.5.1"

  if OS.mac?
    url "https://github.com/reiki4040/rnssh/releases/download/v0.5.1/rnssh_darwin_x86_64.tar.gz"
    sha256 "12b40ea5fff51c8e8ae43b5db136810a42726c59bb49a7304a77fba3ddbaeaf1"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/reiki4040/rnssh/releases/download/v0.5.1/rnssh_linux_x86_64.tar.gz"
      sha256 "abade1458f79bb09fb1059b00874dfeeb0f00d0d5f18b6f872757256906d6d6b"
    end
  end

  def install
    bin.install "rnssh"
  end

  def caveats; <<~EOS
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
