# typed: false
# frozen_string_literal: true

# This file is auto-updated by goreleaser on new releases.
# Manual edits will be overwritten.

class CortexMemory < Formula
  desc "Import-first, observable memory layer for AI agents. Memory that forgets."
  homepage "https://github.com/hurttlocker/cortex"
  license "MIT"
  version "0.3.6"

  on_macos do
    on_arm do
      url "https://github.com/hurttlocker/cortex/releases/download/v0.3.6/cortex-darwin-arm64.tar.gz"
      sha256 "a2a2e9234271d65ba465cc8a468111ed86c8847797d35fde83723716d95bfdf8"
    end
    on_intel do
      url "https://github.com/hurttlocker/cortex/releases/download/v0.3.6/cortex-darwin-amd64.tar.gz"
      sha256 "fab198adc3b791b5ba143453fb9e97e5f79e130ca69b0db461bfc4f4ec8190b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hurttlocker/cortex/releases/download/v0.3.6/cortex-linux-arm64.tar.gz"
      sha256 "8ade37e48fa379331cc8cb151764fef182e17e4d60cca6ed94e585c0babd70fa"
    end
    on_intel do
      url "https://github.com/hurttlocker/cortex/releases/download/v0.3.6/cortex-linux-amd64.tar.gz"
      sha256 "89698da927b6940b8a15fc5098a60bcb4746e3dc59d84708e766da4d782c4140"
    end
  end

  def install
    bin.install "cortex"
  end

  def caveats
    <<~EOS
      Cortex is installed! Quick start:

        # Import some files
        cortex import ~/notes/ --recursive --extract

        # Search your memory
        cortex search "what did I decide about..."

        # Run as MCP server (for Claude Code, etc.)
        cortex mcp

      Data stored in: ~/.cortex/cortex.db
    EOS
  end

  test do
    system "#{bin}/cortex", "version"
  end
end
