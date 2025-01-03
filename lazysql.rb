# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Lazysql < Formula
  desc ""
  homepage "https://github.com/jorgerojas26/lazysql"
  version "0.3.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jorgerojas26/lazysql/releases/download/v0.3.3/lazysql_Darwin_x86_64.tar.gz"
      sha256 "94ba11cd98f2249dda3d1fd8af1ac990947aac3c38442feeaf3a64815b120dcd"

      def install
        bin.install "lazysql"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jorgerojas26/lazysql/releases/download/v0.3.3/lazysql_Darwin_arm64.tar.gz"
      sha256 "ef05b5320c51de67e563a16831fa03bab9f37e8293c5d8bacb9710c09a592e56"

      def install
        bin.install "lazysql"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jorgerojas26/lazysql/releases/download/v0.3.3/lazysql_Linux_x86_64.tar.gz"
        sha256 "4780c6c24e8afc37578a3e42f6d1b895dafe71851656b04eac178b9cbc2d8c3d"

        def install
          bin.install "lazysql"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jorgerojas26/lazysql/releases/download/v0.3.3/lazysql_Linux_arm64.tar.gz"
        sha256 "0e91cc940c2283e30b87ad71ac1eb5ee05b235744d8f30d574f141fd0a159129"

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
