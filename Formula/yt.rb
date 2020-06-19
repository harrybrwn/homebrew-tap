# This file was generated by GoReleaser. DO NOT EDIT.
class Yt < Formula
  desc "Command line YouTube video and audio downloader"
  homepage "https://github.com/harrybrwn/yt"
  version "0.0.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/harrybrwn/yt/releases/download/v0.0.3/yt_0.0.3_MacOS_x86_64.tar.gz"
    sha256 "874dc01d53212ca4fe82e96959b5bcffa0c96003dbee83905d93934545ffc2ba"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/harrybrwn/yt/releases/download/v0.0.3/yt_0.0.3_Linux_x86_64.tar.gz"
      sha256 "5fe5f34ce25a569644ff6e6ef1eecd2bf845f47662b76108a94bb709a414c283"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/harrybrwn/yt/releases/download/v0.0.3/yt_0.0.3_Linux_arm64.tar.gz"
        sha256 "a538c0450dc40c805fb6ad6d79d1a88912e1ba207cac95ece01ae374a69c7ccf"
      else
      end
    end
  end

  def install
    bin.install "yt"
  end

  test do
    system "#{bin}/yt version"
  end
end