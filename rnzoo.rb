# This file was generated by GoReleaser. DO NOT EDIT.
class Rnzoo < Formula
  desc "Useful tool for EC2."
  homepage "https://github.com/reiki4040/rnzoo"
  version "0.6.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/reiki4040/rnzoo/releases/download/v0.6.0/rnzoo_darwin_x86_64.tar.gz"
    sha256 "70e977b22476feff0ae1430724e3feb91071ad043549514a00ab27396bc9341b"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/reiki4040/rnzoo/releases/download/v0.6.0/rnzoo_linux_x86_64.tar.gz"
      sha256 "f7601414a79bc05f757d7f3d11ece2b749c96bda20793d6ae4bfe4f7f6481d9f"
    end
  end

  def install
    bin.install "rnzoo"
  end

  def caveats; <<~EOS
    # rnzoo need AWS access key for working.
    # Please set key/secret to AWS credentials (~/.aws/credentials)
    
    [default]
    aws_access_key_id=your_key_id
    aws_secret_access_key=your_secret
    
    # or environment variable for AWS connection.
    # (~/.bashrc, ~/.zshrc or other.)
    
    export AWS_ACCESS_KEY_ID=YOUR_AWS_ACCESS_KEY
    export AWS_SECRET_ACCESS_KEY=YOUR_AWS_SECRET_ACCESS_KEY
    
    # you can set default aws region.
    
    rnzoo init
  EOS
  end
end
