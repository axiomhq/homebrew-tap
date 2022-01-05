# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AxiomLokiMultiplexer < Formula
  desc "Loki powered log ingestion by multiplexer for Axiom"
  homepage "https://axiom.co"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/axiomhq/axiom-loki-multiplexer/releases/download/v0.5.0/axiom-loki-multiplexer_0.5.0_darwin_amd64.tar.gz"
      sha256 "d0db326d36aa1aaec566d51a9dc015e1965ee5c72a8598cb3a52ab95bafed3ed"

      def install
        bin.install "axiom-loki-multiplexer"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/axiomhq/axiom-loki-multiplexer/releases/download/v0.5.0/axiom-loki-multiplexer_0.5.0_darwin_arm64.tar.gz"
      sha256 "01a7e831f5b16e4fffcc5d0e40a214ac3976429b85bc7482be9e1b8658677edc"

      def install
        bin.install "axiom-loki-multiplexer"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/axiomhq/axiom-loki-multiplexer/releases/download/v0.5.0/axiom-loki-multiplexer_0.5.0_linux_arm64.tar.gz"
      sha256 "5e66fe9767b811174723f8c49f7792c30c4028d396462a18ec7f54fbd294f657"

      def install
        bin.install "axiom-loki-multiplexer"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/axiomhq/axiom-loki-multiplexer/releases/download/v0.5.0/axiom-loki-multiplexer_0.5.0_linux_armv6.tar.gz"
      sha256 "86980e009b7b4ce5bfe29c46ed09e7441ed864bf88eeb4b27f22ddfe3f0d8743"

      def install
        bin.install "axiom-loki-multiplexer"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/axiomhq/axiom-loki-multiplexer/releases/download/v0.5.0/axiom-loki-multiplexer_0.5.0_linux_amd64.tar.gz"
      sha256 "e4c979a3b43b259929f07c43f7213728980a43c206e1130a15e4644d701dfe19"

      def install
        bin.install "axiom-loki-multiplexer"
      end
    end
  end

  test do
    assert_match "x", "x"
  end
end