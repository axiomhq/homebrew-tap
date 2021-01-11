# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Axiom < Formula
  desc "Powerful log analytics from the comfort of your command-line"
  homepage "https://axiom.co"
  version "0.1.1"
  license "MIT"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/axiomhq/cli/releases/download/v0.1.1/axiom_0.1.1_darwin_amd64.tar.gz"
    sha256 "9834e6f8139823e7d910f029f3cfd80019e58168fa9705a3de79d586472fb756"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/axiomhq/cli/releases/download/v0.1.1/axiom_0.1.1_linux_amd64.tar.gz"
    sha256 "bc1e67bc4bd7187787a0d9582b33b02b2a7ede24a89b6391353dd2578d32ca13"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/axiomhq/cli/releases/download/v0.1.1/axiom_0.1.1_linux_arm64.tar.gz"
    sha256 "01cad3ba04137bd25150288c7c255d10c3241dfe24ffebdaf57d0306b21c6149"
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
