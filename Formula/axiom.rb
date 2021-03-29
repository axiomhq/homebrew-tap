# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Axiom < Formula
  desc "Powerful log analytics from the comfort of your command-line"
  homepage "https://axiom.co"
  version "0.2.0"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/axiomhq/cli/releases/download/v0.2.0/axiom_0.2.0_darwin_amd64.tar.gz"
    sha256 "9b525fafde3796774e18baf3dcc43f611be393a3f5469e9733cc8d0fb5bc9e2c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/axiomhq/cli/releases/download/v0.2.0/axiom_0.2.0_darwin_arm64.tar.gz"
    sha256 "e31e46cb3b130ae0337876c5fd1aa6ab398170aecc0d90dddc331f29168bb5d1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/axiomhq/cli/releases/download/v0.2.0/axiom_0.2.0_linux_amd64.tar.gz"
    sha256 "932b059e7353f25b1c691d05030a401d3f5bc2d99c273e495f7dfb4d4ae2b071"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/axiomhq/cli/releases/download/v0.2.0/axiom_0.2.0_linux_armv6.tar.gz"
    sha256 "44584e4dfe07709e3c73dc656b4b478c6280793f38957e9e635159c503b61533"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/axiomhq/cli/releases/download/v0.2.0/axiom_0.2.0_linux_arm64.tar.gz"
    sha256 "87541c4971c8c59acdb5068fb929c8f1410512f901d5a9f6607245c210ca92f6"
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
