# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Lazysql < Formula
  desc ""
  homepage "https://github.com/jorgerojas26/lazysql"
  version "0.3.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jorgerojas26/lazysql/releases/download/v0.3.5/lazysql_Darwin_x86_64.tar.gz"
      sha256 "505107d448ce183aea499dfa4819b2f61ef2d599eeee517a86d95e93c438e637"

      def install
        bin.install "lazysql"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jorgerojas26/lazysql/releases/download/v0.3.5/lazysql_Darwin_arm64.tar.gz"
      sha256 "c89edf684592f10a4e0391c992bc6b61d4980b2a62010e7d565f195300e7ec3c"

      def install
        bin.install "lazysql"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jorgerojas26/lazysql/releases/download/v0.3.5/lazysql_Linux_x86_64.tar.gz"
        sha256 "3f09ad8545cb0436ebfbf66fe553565c3f8b304159bc81bb039e07caaccaf0aa"

        def install
          bin.install "lazysql"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jorgerojas26/lazysql/releases/download/v0.3.5/lazysql_Linux_arm64.tar.gz"
        sha256 "9a2c2b79599ae2001f993170d7bded3c78e04953620bfd1b457f1818dc918754"

        def install
          bin.install "lazysql"
        end
      end
    end
  end

  test do
    system "#{bin}/lazysql version"
  end
end
