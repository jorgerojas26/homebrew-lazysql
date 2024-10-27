# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Lazysql < Formula
  desc ""
  homepage "https://github.com/jorgerojas26/lazysql"
  version "0.3.0"

  on_macos do
    on_intel do
      url "https://github.com/jorgerojas26/lazysql/releases/download/v0.3.0/lazysql_Darwin_x86_64.tar.gz"
      sha256 "b90af39553b89149464b5dc557d7c8cdcd6564d7f1ad339ac1953bdeb3f7dfba"

      def install
        bin.install "lazysql"
      end
    end
    on_arm do
      url "https://github.com/jorgerojas26/lazysql/releases/download/v0.3.0/lazysql_Darwin_arm64.tar.gz"
      sha256 "b46929a59da55d09dd3173faa9da3d0e6351f9bc420c37d6c8623aba08754be8"

      def install
        bin.install "lazysql"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jorgerojas26/lazysql/releases/download/v0.3.0/lazysql_Linux_x86_64.tar.gz"
        sha256 "75486fcc73e24adbd9d8728ca5bceb5783706f151979aa30401f3c3b7e21b26d"

        def install
          bin.install "lazysql"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jorgerojas26/lazysql/releases/download/v0.3.0/lazysql_Linux_arm64.tar.gz"
        sha256 "2bc5ab3760fde7052e688a7fdba5012566fb1b092f1223fc45d8769678f16324"

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
