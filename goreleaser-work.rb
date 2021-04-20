# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoreleaserWork < Formula
  desc "show version info only."
  homepage "https://github.com/reiki4040/goreleaser-work"
  version "0.2.3"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/reiki4040/goreleaser-work/releases/download/v0.2.3/goreleaser-work_darwin_x86_64.tar.gz"
    sha256 "c5db644fd3668cb27a0f740cf70641009955ca627a818cc45d826f6992f1a507"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/reiki4040/goreleaser-work/releases/download/v0.2.3/goreleaser-work_darwin_arm64.tar.gz"
    sha256 "35d9e657f82a18a096a8a7145a19042a3ebcfddb527acf1dcce48829b0b40dd9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/reiki4040/goreleaser-work/releases/download/v0.2.3/goreleaser-work_linux_x86_64.tar.gz"
    sha256 "bd1e18b0c7c473a8f32023fc88e39f7b73ba9c05e12851a7655a1f11d34ec958"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/reiki4040/goreleaser-work/releases/download/v0.2.3/goreleaser-work_linux_arm64.tar.gz"
    sha256 "2d5a5b87ecd855e7ca4d33555bb94de04fe0695b217009882b536fedbe752617"
  end

  def install
    bin.install "goreleaser-work"
  end

  def caveats; <<~EOS
    this message is shown on console when finished install with homebrew.
  EOS
  end
end
