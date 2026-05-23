# typed: false
# frozen_string_literal: true

class Aman < Formula
  desc "أمان — quantum-safe team credential manager"
  homepage "https://github.com/al-Zamakhshari/aman"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/al-Zamakhshari/aman/releases/download/v0.1.0/aman_0.1.0_darwin_arm64.tar.gz"
      sha256 "5378c50399d2f7bb8f5acf63d72749981b34be3e44b18b16e8e3ebcf3d8c8a54"
    end
    on_intel do
      url "https://github.com/al-Zamakhshari/aman/releases/download/v0.1.0/aman_0.1.0_darwin_amd64.tar.gz"
      sha256 "b1179925bf108fcfffb9842b1e90fd9f95614423ed42f2c3f0a2eb6cb12e2f7d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/al-Zamakhshari/aman/releases/download/v0.1.0/aman_0.1.0_linux_arm64.tar.gz"
      sha256 "2ed2dc3ebf2f99f7e06dada214d24e2da6ead626fcc11ca67484401d260fb8b6"
    end
    on_intel do
      url "https://github.com/al-Zamakhshari/aman/releases/download/v0.1.0/aman_0.1.0_linux_amd64.tar.gz"
      sha256 "2bf4219505f590c5c59020c81fa099d69209c9e2bc79e90af6d8b72517369e7d"
    end
  end

  def install
    bin.install "aman"
  end

  test do
    system "#{bin}/aman", "--help"
  end
end
