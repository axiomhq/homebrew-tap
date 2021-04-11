# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Axiom < Formula
  desc "Powerful log analytics from the comfort of your command-line"
  homepage "https://axiom.co"
  version "0.2.1"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/axiomhq/cli/releases/download/v0.2.1/axiom_0.2.1_darwin_amd64.tar.gz"
    sha256 "d3932780fbd0e2f84141c1a18793985a08bc8c467dce6b02462c3fd404f9f27b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/axiomhq/cli/releases/download/v0.2.1/axiom_0.2.1_darwin_arm64.tar.gz"
    sha256 "3df6e8842bb5624a42808c3e6ced1d1d4ffaa2a9935fbfa799431910dbda5cc4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/axiomhq/cli/releases/download/v0.2.1/axiom_0.2.1_linux_amd64.tar.gz"
    sha256 "db95295ed9d68a9e1f6237a4737c56f536d132cc6567da33847c369cf5279753"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/axiomhq/cli/releases/download/v0.2.1/axiom_0.2.1_linux_armv6.tar.gz"
    sha256 "41121d04051a0ac2d4d8f994f1e92c6363baf35ef1da08933460e626aa33bb5d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/axiomhq/cli/releases/download/v0.2.1/axiom_0.2.1_linux_arm64.tar.gz"
    sha256 "cb86d7ace012a771fc319428238423eecc78a4b76e9339b2990846cb08b32318"
  end

  def install
    bin.install "axiom"
    man1.install Dir["man/axiom*.1"]
    (bash_completion/"axiom").write `#{bin}/axiom completion bash`
    (fish_completion/"axiom.fish").write `#{bin}/axiom completion fish`
    (zsh_completion/"_axiom").write `#{bin}/axiom completion zsh`
  end

  test do
    assert_match "Axiom CLI version #{version}", shell_output("#{bin}/axiom -v")
  end
end
