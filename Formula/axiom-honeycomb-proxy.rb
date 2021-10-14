# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AxiomHoneycombProxy < Formula
  desc "Honeycomb compatible log forwarding and multiplexing proxy for Axiom"
  homepage "https://axiom.co"
  version "0.6.0"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/axiomhq/axiom-honeycomb-proxy/releases/download/v0.6.0/axiom-honeycomb-proxy_0.6.0_darwin_arm64.tar.gz"
      sha256 "2e2da9f40ac0ef5d6d7ea520687517df1c1961634db5eddf3af484bbf332a4e4"
    end
    if Hardware::CPU.intel?
      url "https://github.com/axiomhq/axiom-honeycomb-proxy/releases/download/v0.6.0/axiom-honeycomb-proxy_0.6.0_darwin_amd64.tar.gz"
      sha256 "03633865a64794a989b8e38b19416f6244fcc94d7ff2990f9981c272017528b7"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/axiomhq/axiom-honeycomb-proxy/releases/download/v0.6.0/axiom-honeycomb-proxy_0.6.0_linux_arm64.tar.gz"
      sha256 "d4a31f2fb6a147f7150361406c976ef58c2de117ccd9d1c33e441a8b7e2b6beb"
    end
    if Hardware::CPU.intel?
      url "https://github.com/axiomhq/axiom-honeycomb-proxy/releases/download/v0.6.0/axiom-honeycomb-proxy_0.6.0_linux_amd64.tar.gz"
      sha256 "ce49a91e531e95d89fa0781ed71896c48a5aa961de8bf69b880d0553015a27d4"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/axiomhq/axiom-honeycomb-proxy/releases/download/v0.6.0/axiom-honeycomb-proxy_0.6.0_linux_armv6.tar.gz"
      sha256 "c0028a1b921c23f805a26213cd41fd319d66244f4efff18bb907338698004925"
    end
  end

  def install
    bin.install "axiom-honeycomb-proxy"
  end

  test do
    assert_match "x", "x"
  end
end
