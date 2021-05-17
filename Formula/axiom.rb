# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Axiom < Formula
  desc "Powerful log analytics from the comfort of your command-line"
  homepage "https://axiom.co"
  version "0.2.4"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/axiomhq/cli/releases/download/v0.2.4/axiom_0.2.4_darwin_amd64.tar.gz"
    sha256 "070bb54912d55574b98b092fbd80bb63225287e1430d43630e6d1367329a8cc5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/axiomhq/cli/releases/download/v0.2.4/axiom_0.2.4_darwin_arm64.tar.gz"
    sha256 "692f699cf4960bb7f191476aff6dfa89bab1fa65e6248877e5366f754824673b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/axiomhq/cli/releases/download/v0.2.4/axiom_0.2.4_linux_amd64.tar.gz"
    sha256 "8a40130bfa279e814976284cffe1e750dc6bd045a9f3d25f59e3e907e37de1ee"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/axiomhq/cli/releases/download/v0.2.4/axiom_0.2.4_linux_armv6.tar.gz"
    sha256 "e917464861bcb601a2d78683948ad3bb6834734f121838bbf71536ea49fe9feb"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/axiomhq/cli/releases/download/v0.2.4/axiom_0.2.4_linux_arm64.tar.gz"
    sha256 "4162301dee9fa43e8533033e650e3f16a1de7807a5aa8c32853f77e5500927a6"
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
