# typed: false
# frozen_string_literal: true

class Rdhpf < Formula
  desc "Forward remote Docker container ports to localhost over SSH"
  homepage "https://github.com/tomaszpeksa/remote-docker-host-port-forwarder"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomaszpeksa/remote-docker-host-port-forwarder/releases/download/v0.2.2/remote-docker-host-port-forwarder_0.2.2_Darwin_arm64.tar.gz"
      sha256 "49cb9ac1688f45378607c016a35feb37a2c1d89ebea38aefdae95dec79d8131c"
    end
    on_intel do
      url "https://github.com/tomaszpeksa/remote-docker-host-port-forwarder/releases/download/v0.2.2/remote-docker-host-port-forwarder_0.2.2_Darwin_x86_64.tar.gz"
      sha256 "677b458917ebb6753a4ef6841ca17008a19bc2579d6d02f07a97bcd75e0cb360"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomaszpeksa/remote-docker-host-port-forwarder/releases/download/v0.2.2/remote-docker-host-port-forwarder_0.2.2_Linux_arm64.tar.gz"
      sha256 "e29896d5f7343c4b256b12091ed8491f05aa851c0cc9e6c1d004f0c5e262a5fe"
    end
    on_intel do
      url "https://github.com/tomaszpeksa/remote-docker-host-port-forwarder/releases/download/v0.2.2/remote-docker-host-port-forwarder_0.2.2_Linux_x86_64.tar.gz"
      sha256 "fa2ee5d95a8bd47a86529ef9a65b9e80d541a68148828566a50bce8f30c97802"
    end
  end

  def install
    bin.install "rdhpf"
  end

  test do
    system "#{bin}/rdhpf", "version"
  end
end
