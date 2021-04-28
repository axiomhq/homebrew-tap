# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Axiom < Formula
  desc "Powerful log analytics from the comfort of your command-line"
  homepage "https://axiom.co"
  version "0.2.3"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/axiomhq/cli/releases/download/v0.2.3/axiom_0.2.3_darwin_amd64.tar.gz"
    sha256 "3c5b7607b912ff19263a0fef55b2d057c3cefc78360d4fdcceeabf2807e59dbc"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/axiomhq/cli/releases/download/v0.2.3/axiom_0.2.3_darwin_arm64.tar.gz"
    sha256 "4bb878fcaaed2c6c5884fbe46ddd3f51d6d7f4f1bde4b8d0c13e2c6ab3566d48"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/axiomhq/cli/releases/download/v0.2.3/axiom_0.2.3_linux_amd64.tar.gz"
    sha256 "c6414d6d23642d71334438086f089a6b8c2aa29e8311928da8d87c4bf09208e7"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/axiomhq/cli/releases/download/v0.2.3/axiom_0.2.3_linux_armv6.tar.gz"
    sha256 "aa1f10dd41dde781fb2236f3ffc728ff943081c0ddf1637edab338b5685f35e1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/axiomhq/cli/releases/download/v0.2.3/axiom_0.2.3_linux_arm64.tar.gz"
    sha256 "45fb3a519201380aaa64f63733ee055a8c44918d9eb33e6f3a54bff79c2dedbd"
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
