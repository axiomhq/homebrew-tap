# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AxiomHoneycombProxy < Formula
  desc "Honeycomb compatible log forwarding and multiplexing proxy for Axiom"
  homepage "https://axiom.co"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/axiomhq/axiom-honeycomb-proxy/releases/download/v0.7.0/axiom-honeycomb-proxy_0.7.0_darwin_arm64.tar.gz"
      sha256 "2972ca4266e085d78216cef94dc4b2fc86a73346b469cd49456af89a7d4ae31b"

      def install
        bin.install "axiom-honeycomb-proxy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/axiomhq/axiom-honeycomb-proxy/releases/download/v0.7.0/axiom-honeycomb-proxy_0.7.0_darwin_amd64.tar.gz"
      sha256 "c9f183ffb9585c5ec81fb4e4f8689cce8e4bf287391ee08e2a171017fdea03b9"

      def install
        bin.install "axiom-honeycomb-proxy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/axiomhq/axiom-honeycomb-proxy/releases/download/v0.7.0/axiom-honeycomb-proxy_0.7.0_linux_arm64.tar.gz"
      sha256 "39d0bbf0151a8fb0b539c93ee4a8eba1827e178c52d21b2d1882f703e45763af"

      def install
        bin.install "axiom-honeycomb-proxy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/axiomhq/axiom-honeycomb-proxy/releases/download/v0.7.0/axiom-honeycomb-proxy_0.7.0_linux_amd64.tar.gz"
      sha256 "14a080c7f717c15c98746807b850684e763537c344c35a5141215e469aa3833d"

      def install
        bin.install "axiom-honeycomb-proxy"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/axiomhq/axiom-honeycomb-proxy/releases/download/v0.7.0/axiom-honeycomb-proxy_0.7.0_linux_armv6.tar.gz"
      sha256 "fd2e86118e8f324071cd9b03f26a009fa6c391128297fbfb7a339f01ab1e4141"

      def install
        bin.install "axiom-honeycomb-proxy"
      end
    end
  end

  test do
    assert_match "x", "x"
  end
end
