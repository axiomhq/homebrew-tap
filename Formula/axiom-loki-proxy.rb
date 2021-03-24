# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AxiomLokiProxy < Formula
  desc "Loki powered log ingestion by proxy for Axiom"
  homepage "https://axiom.co"
  version "0.1.5"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/axiomhq/axiom-loki-proxy/releases/download/v0.1.5/axiom-loki-proxy_0.1.5_darwin_amd64.tar.gz"
    sha256 "ecc3f23a504516f273b9576b8bcc5db0890a57e80830db3bff382faf1ea167b0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/axiomhq/axiom-loki-proxy/releases/download/v0.1.5/axiom-loki-proxy_0.1.5_darwin_arm64.tar.gz"
    sha256 "8939fdd21c6c5f4cf920559f31bcff3416672c5b96321e9e26601fa52cfa3950"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/axiomhq/axiom-loki-proxy/releases/download/v0.1.5/axiom-loki-proxy_0.1.5_linux_amd64.tar.gz"
    sha256 "1e9cc108467ea0ee97fc8eaa2decc76caf6ac6cc7c5a2d1633b38ba4eb9fafa4"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/axiomhq/axiom-loki-proxy/releases/download/v0.1.5/axiom-loki-proxy_0.1.5_linux_armv6.tar.gz"
    sha256 "4f49e6026b74392a997cb8d6a4d9963afb05c490b04972e28a6693c1e52dbef3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/axiomhq/axiom-loki-proxy/releases/download/v0.1.5/axiom-loki-proxy_0.1.5_linux_arm64.tar.gz"
    sha256 "d9273ced3c1af128a90cb29ab2f42aa8a10780bd43f6b714181a93f8571f9fad"
  end

  def install
    bin.install "axiom-loki-proxy"
  end
end