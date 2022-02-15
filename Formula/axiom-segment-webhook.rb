# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AxiomSegmentWebhook < Formula
  desc "Segment.io Webhook for Axiom"
  homepage "https://axiom.co"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/axiomhq/axiom-segment-webhook/releases/download/v0.1.0/axiom-segment-webhook_0.1.0_darwin_arm64.tar.gz"
      sha256 "6208d6b583cb1a573b42adc4441905ecee092a98d8fcfa25a1af941e308d5f37"

      def install
        bin.install "axiom-segment-webhook"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/axiomhq/axiom-segment-webhook/releases/download/v0.1.0/axiom-segment-webhook_0.1.0_darwin_amd64.tar.gz"
      sha256 "7dc0c8b9ca6c8df1c8a0005acfd7d9cfc3a4f602b25fff8a0a19c63cab94809e"

      def install
        bin.install "axiom-segment-webhook"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/axiomhq/axiom-segment-webhook/releases/download/v0.1.0/axiom-segment-webhook_0.1.0_linux_armv6.tar.gz"
      sha256 "143e4eb3e9a8b7f523d903d9b9a19b054aecc1c830c98e67a7ceff73fdecbabb"

      def install
        bin.install "axiom-segment-webhook"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/axiomhq/axiom-segment-webhook/releases/download/v0.1.0/axiom-segment-webhook_0.1.0_linux_arm64.tar.gz"
      sha256 "f163fa546e363e0767e29d41c5e88fa8783cf59aadf7a4885208cdbdf4e2e8c1"

      def install
        bin.install "axiom-segment-webhook"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/axiomhq/axiom-segment-webhook/releases/download/v0.1.0/axiom-segment-webhook_0.1.0_linux_amd64.tar.gz"
      sha256 "001b6b9bb1425f18e356117995f419adb5c63e14c151fbc700f5ecc18a2c6f94"

      def install
        bin.install "axiom-segment-webhook"
      end
    end
  end

  test do
    assert_match "x", "x"
  end
end