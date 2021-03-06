# This file was generated by GoReleaser. DO NOT EDIT.
class Rnsd < Formula
  desc "control AWS Service Discovery command"
  homepage "https://github.com/reiki4040/rnsd"
  version "0.1.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/reiki4040/rnsd/releases/download/v0.1.0/rnsd_darwin_x86_64.tar.gz"
    sha256 "c0b32c301101286cc14f12e2dfd3032da4bc7601297aae64463cec5e2255976f"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/reiki4040/rnsd/releases/download/v0.1.0/rnsd_linux_x86_64.tar.gz"
      sha256 "72e5d1ec20ef81ed4977e13d4a549e8762e94d51b9ec61494ce0c6be567ed0ea"
    end
  end

  def install
    bin.install "rnsd"
  end
end
