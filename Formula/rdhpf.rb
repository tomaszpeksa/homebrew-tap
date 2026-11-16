# typed: false
# frozen_string_literal: true

class Rdhpf < Formula
  desc "Forward remote Docker container ports to localhost over SSH"
  homepage "https://github.com/tomaszpeksa/remote-docker-host-port-forwarder"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomaszpeksa/remote-docker-host-port-forwarder/releases/download/v0.2.1/remote-docker-host-port-forwarder_0.2.1_Darwin_arm64.tar.gz"
      sha256 "5b4119e47491e96107e1737a8c6397b62dcd2840c5be3b9129d7db86beb4be50"
    end
    on_intel do
      url "https://github.com/tomaszpeksa/remote-docker-host-port-forwarder/releases/download/v0.2.1/remote-docker-host-port-forwarder_0.2.1_Darwin_x86_64.tar.gz"
      sha256 "74478fa2f077edae83ba368a460d20cf21af11222cc55621fc7aa5110c7e4a9f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomaszpeksa/remote-docker-host-port-forwarder/releases/download/v0.2.1/remote-docker-host-port-forwarder_0.2.1_Linux_arm64.tar.gz"
      sha256 "ca035f3b145749b776d98763d708ac45779a20ac16a7ffc26e5b9acfbfcf73d2"
    end
    on_intel do
      url "https://github.com/tomaszpeksa/remote-docker-host-port-forwarder/releases/download/v0.2.1/remote-docker-host-port-forwarder_0.2.1_Linux_x86_64.tar.gz"
      sha256 "bb89c77d5276d167f81165d2f5182f9d6c703a70ef4df95279ed88655e74e544"
    end
  end

  def install
    bin.install "rdhpf"
  end

  test do
    system "#{bin}/rdhpf", "version"
  end
end
