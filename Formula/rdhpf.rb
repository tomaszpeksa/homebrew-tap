# typed: false
# frozen_string_literal: true

class Rdhpf < Formula
  desc "Forward remote Docker container ports to localhost over SSH"
  homepage "https://github.com/tomaszpeksa/remote-docker-host-port-forwarder"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomaszpeksa/remote-docker-host-port-forwarder/releases/download/v0.2.0/remote-docker-host-port-forwarder_0.2.0_Darwin_arm64.tar.gz"
      sha256 "2ba8bc43ced2e8d17e1d519f2008cfd0d6e7ae6d69986df5188d0a3facaa4c88"
    end
    on_intel do
      url "https://github.com/tomaszpeksa/remote-docker-host-port-forwarder/releases/download/v0.2.0/remote-docker-host-port-forwarder_0.2.0_Darwin_x86_64.tar.gz"
      sha256 "a453da2fdb988ac56b1133d4e9a5e5fbaae921e8ad97787d6041e9e26ac200a0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomaszpeksa/remote-docker-host-port-forwarder/releases/download/v0.2.0/remote-docker-host-port-forwarder_0.2.0_Linux_arm64.tar.gz"
      sha256 "f950be0dae15341e7bbe2be0a4c9e3b9f42e7156d4432c3b9949eb2030397aa1"
    end
    on_intel do
      url "https://github.com/tomaszpeksa/remote-docker-host-port-forwarder/releases/download/v0.2.0/remote-docker-host-port-forwarder_0.2.0_Linux_x86_64.tar.gz"
      sha256 "7f29cd387c75aa5b608cda343caa9e581d327038b614e24988fd7a0ba20246fc"
    end
  end

  def install
    bin.install "rdhpf"
  end

  test do
    system "#{bin}/rdhpf", "version"
  end
end
