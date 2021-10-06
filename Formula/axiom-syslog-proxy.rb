# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AxiomSyslogProxy < Formula
  desc "Syslog ingestion by proxy for Axiom"
  homepage "https://axiom.co"
  version "0.4.0"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/axiomhq/axiom-syslog-proxy/releases/download/v0.4.0/axiom-syslog-proxy_0.4.0_darwin_amd64.tar.gz"
      sha256 "7e5561164121591b3b7b2c9868e341beb8f8cd3e162608a35999835acd647d79"
    end
    if Hardware::CPU.arm?
      url "https://github.com/axiomhq/axiom-syslog-proxy/releases/download/v0.4.0/axiom-syslog-proxy_0.4.0_darwin_arm64.tar.gz"
      sha256 "e0ffe72cc8c09a85e80a632759ee5bd6ce0bc9cf989f27a90ebd9446c54c29f5"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/axiomhq/axiom-syslog-proxy/releases/download/v0.4.0/axiom-syslog-proxy_0.4.0_linux_armv6.tar.gz"
      sha256 "9be1db0a81a4634de72f0d9d914bd2d496122315791d2d3ab1daf6dbd13a20ee"
    end
    if Hardware::CPU.intel?
      url "https://github.com/axiomhq/axiom-syslog-proxy/releases/download/v0.4.0/axiom-syslog-proxy_0.4.0_linux_amd64.tar.gz"
      sha256 "8724aeb8c4850c28d101822a4ab29e9f5390f5e45e03f0a96753fd123676f3d7"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/axiomhq/axiom-syslog-proxy/releases/download/v0.4.0/axiom-syslog-proxy_0.4.0_linux_arm64.tar.gz"
      sha256 "055e7910efd96d2e0fee2d19e0bee1ddca5919daee4d20c9a0385bed9bb4af2f"
    end
  end

  def install
    bin.install "axiom-syslog-proxy"
  end

  test do
    assert_match "x", "x"
  end
end
