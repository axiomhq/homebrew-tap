# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Axiom < Formula
  desc "Powerful log analytics from the comfort of your command-line"
  homepage "https://axiom.co"
  version "0.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/axiomhq/cli/releases/download/v0.6.1/axiom_0.6.1_darwin_amd64.tar.gz"
      sha256 "58ae69382e5d6ef01238c4ae38fe6b5a6adb94bfcc010b3b05ce533689cf5827"

      def install
        bin.install "axiom"
        man1.install Dir["man/axiom*.1"]
        (bash_completion/"axiom").write `#{bin}/axiom completion bash`
        (fish_completion/"axiom.fish").write `#{bin}/axiom completion fish`
        (zsh_completion/"_axiom").write `#{bin}/axiom completion zsh`
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/axiomhq/cli/releases/download/v0.6.1/axiom_0.6.1_darwin_arm64.tar.gz"
      sha256 "2fa11fd80c3db01db81959e83b40972570ef9cdad4934af8b0dcf616759be9da"

      def install
        bin.install "axiom"
        man1.install Dir["man/axiom*.1"]
        (bash_completion/"axiom").write `#{bin}/axiom completion bash`
        (fish_completion/"axiom.fish").write `#{bin}/axiom completion fish`
        (zsh_completion/"_axiom").write `#{bin}/axiom completion zsh`
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/axiomhq/cli/releases/download/v0.6.1/axiom_0.6.1_linux_arm64.tar.gz"
      sha256 "397de127cdde58478bad1178e18cfcfe1c27c7efc548fb051eac5ef34d3e514c"

      def install
        bin.install "axiom"
        man1.install Dir["man/axiom*.1"]
        (bash_completion/"axiom").write `#{bin}/axiom completion bash`
        (fish_completion/"axiom.fish").write `#{bin}/axiom completion fish`
        (zsh_completion/"_axiom").write `#{bin}/axiom completion zsh`
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/axiomhq/cli/releases/download/v0.6.1/axiom_0.6.1_linux_armv6.tar.gz"
      sha256 "bedb6b1dc20be838349334eec58d8a9208d5cb0fd9675345d66f46ef910d9a23"

      def install
        bin.install "axiom"
        man1.install Dir["man/axiom*.1"]
        (bash_completion/"axiom").write `#{bin}/axiom completion bash`
        (fish_completion/"axiom.fish").write `#{bin}/axiom completion fish`
        (zsh_completion/"_axiom").write `#{bin}/axiom completion zsh`
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/axiomhq/cli/releases/download/v0.6.1/axiom_0.6.1_linux_amd64.tar.gz"
      sha256 "9481668e272fa76a0340bd7fbba977f4137a1e017ce09c2e51c28e9dc5be352b"

      def install
        bin.install "axiom"
        man1.install Dir["man/axiom*.1"]
        (bash_completion/"axiom").write `#{bin}/axiom completion bash`
        (fish_completion/"axiom.fish").write `#{bin}/axiom completion fish`
        (zsh_completion/"_axiom").write `#{bin}/axiom completion zsh`
      end
    end
  end

  test do
    assert_match "Axiom CLI version #{version}", shell_output("#{bin}/axiom -v")
  end
end
