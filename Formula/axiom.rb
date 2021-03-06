# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Axiom < Formula
  desc "Powerful log analytics from the comfort of your command-line"
  homepage "https://axiom.co"
  version "0.1.12"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/axiomhq/cli/releases/download/v0.1.12/axiom_0.1.12_darwin_amd64.tar.gz"
    sha256 "4ff12ab3ff063a8d3b0c22956e915a32d283e34d997449a4f4b0a66750e9472b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/axiomhq/cli/releases/download/v0.1.12/axiom_0.1.12_darwin_arm64.tar.gz"
    sha256 "eeb0493fe7434a33c29df7388b02964c7c8f72337841149c0bf414af62130068"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/axiomhq/cli/releases/download/v0.1.12/axiom_0.1.12_linux_amd64.tar.gz"
    sha256 "07eca3bc113042ee1763ea6877a7321c92f8338b233e1eaa67c2761c30ab7878"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/axiomhq/cli/releases/download/v0.1.12/axiom_0.1.12_linux_arm64.tar.gz"
    sha256 "237cb995453fa7f42c8b4c4c0be2e9cc72df15638aab692028dfa74b0c08ea64"
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
