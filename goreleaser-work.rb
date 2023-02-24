# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoreleaserWork < Formula
  desc "show version info only."
  homepage "https://github.com/reiki4040/goreleaser-work"
  version "0.3.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/reiki4040/goreleaser-work/releases/download/v0.3.2/goreleaser-work_Darwin_arm64.tar.gz"
      sha256 "4ca486d89663004ae41df3f93d3081442deb508501b4b054a969b3c498f6a225"

      def install
        bin.install "goreleaser-work"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/reiki4040/goreleaser-work/releases/download/v0.3.2/goreleaser-work_Darwin_x86_64.tar.gz"
      sha256 "5357581ce1f0170e3281da41da8475eb886fa6fa76f8ec80987018a3685fc56b"

      def install
        bin.install "goreleaser-work"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/reiki4040/goreleaser-work/releases/download/v0.3.2/goreleaser-work_Linux_x86_64.tar.gz"
      sha256 "636ffc5ad2cc477fbfe9be9f5edfd97d072cab34966984fb18cb679afb10e67c"

      def install
        bin.install "goreleaser-work"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/reiki4040/goreleaser-work/releases/download/v0.3.2/goreleaser-work_Linux_arm64.tar.gz"
      sha256 "be2f2a883004e2b158db1e7c37729186ebcc724ab34e78945c283ee3789a7fab"

      def install
        bin.install "goreleaser-work"
      end
    end
  end

  def caveats
    <<~EOS
      this message is shown on console when finished install with homebrew.
    EOS
  end
end
