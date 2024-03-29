# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoreleaserWork < Formula
  desc "show version info only."
  homepage "https://github.com/reiki4040/goreleaser-work"
  version "0.3.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/reiki4040/goreleaser-work/releases/download/v0.3.5/goreleaser-work_darwin_arm64.tar.gz"
      sha256 "cc33692ed3cfd8a553ad3af06b0c34f7d786fb16f0bba5465f49c93438c52fca"

      def install
        bin.install "goreleaser-work"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/reiki4040/goreleaser-work/releases/download/v0.3.5/goreleaser-work_darwin_x86_64.tar.gz"
      sha256 "a724fa86306fe4ff124f595a6646230c06bcdd7cd7c3d86d7799e221451e5b20"

      def install
        bin.install "goreleaser-work"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/reiki4040/goreleaser-work/releases/download/v0.3.5/goreleaser-work_linux_arm64.tar.gz"
      sha256 "f0505fc0ebb2cf00c78f2949ca92872656096489e42393915634168046e5351e"

      def install
        bin.install "goreleaser-work"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/reiki4040/goreleaser-work/releases/download/v0.3.5/goreleaser-work_linux_x86_64.tar.gz"
      sha256 "c8a304ac14f715c7314714c3aefb0611c5d3ec023c8ad155f413c4d012770f10"

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
