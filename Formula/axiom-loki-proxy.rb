# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AxiomLokiProxy < Formula
  desc "Loki powered log ingestion by proxy for Axiom"
  homepage "https://axiom.co"
  version "0.1.10"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/axiomhq/axiom-loki-proxy/releases/download/v0.1.10/axiom-loki-proxy_0.1.10_darwin_amd64.tar.gz"
      sha256 "789ed6d708c101d2e864ea637f64eb5315bd0e50b7ff73c0ffdc02d48af96e21"
    end
    if Hardware::CPU.arm?
      url "https://github.com/axiomhq/axiom-loki-proxy/releases/download/v0.1.10/axiom-loki-proxy_0.1.10_darwin_arm64.tar.gz"
      sha256 "dccb1f6d5b452be6fbcbca7c4e28cd41ec40de714e40d17c3200fd8620e08d96"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/axiomhq/axiom-loki-proxy/releases/download/v0.1.10/axiom-loki-proxy_0.1.10_linux_amd64.tar.gz"
      sha256 "5c1b93625fd7bc14705e6e419e133cf53be20b8a66cb95cde47d90545b72c28e"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/axiomhq/axiom-loki-proxy/releases/download/v0.1.10/axiom-loki-proxy_0.1.10_linux_armv6.tar.gz"
      sha256 "cf1ef27d6ce46428c23fdfa51acdc30ca61451b42b36beef031c2e78f218808d"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/axiomhq/axiom-loki-proxy/releases/download/v0.1.10/axiom-loki-proxy_0.1.10_linux_arm64.tar.gz"
      sha256 "5acaa06201f743333a34deecff3b7d6b044c66a157fb10a4f88160ab25ede018"
    end
  end

  def install
    bin.install "axiom-loki-proxy"
  end

  test do
    assert_match "x", "x"
  end
end
