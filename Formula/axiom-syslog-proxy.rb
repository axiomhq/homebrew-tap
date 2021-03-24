# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AxiomSyslogProxy < Formula
  desc "Syslog ingestion by proxy for Axiom"
  homepage "https://axiom.co"
  version "0.1.3"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/axiomhq/axiom-syslog-proxy/releases/download/v0.1.3/axiom-syslog-proxy_0.1.3_darwin_amd64.tar.gz"
    sha256 "284b72b2aaab9a563d24a32bf61c153bd7a7f5df249ba7c10e727210bf3bb452"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/axiomhq/axiom-syslog-proxy/releases/download/v0.1.3/axiom-syslog-proxy_0.1.3_darwin_arm64.tar.gz"
    sha256 "b8cafca483324dc7a98479e4d8bb73255bd0f5f10e186a9c0444b51c4ffee218"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/axiomhq/axiom-syslog-proxy/releases/download/v0.1.3/axiom-syslog-proxy_0.1.3_linux_amd64.tar.gz"
    sha256 "04882cfd718eadcc78c52659311dfb382e72dd42545122440101b5aabe76fe78"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/axiomhq/axiom-syslog-proxy/releases/download/v0.1.3/axiom-syslog-proxy_0.1.3_linux_armv6.tar.gz"
    sha256 "9524c23fc8c238763898df16db16b6ac3d8beb2c31e7830d226093500cceb994"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/axiomhq/axiom-syslog-proxy/releases/download/v0.1.3/axiom-syslog-proxy_0.1.3_linux_arm64.tar.gz"
    sha256 "07cc4f6e87513243ab5dc373c44e6e6caeb1e49b5e43c24605d1e71a7fc97f25"
  end

  def install
    bin.install "axiom-syslog-proxy"
  end
end
