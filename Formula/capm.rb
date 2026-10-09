class Capm < Formula
  desc "Code Analysis Package Manager 📦"
  homepage "https://getcapm.github.io"
  version "0.10.3"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/getcapm/capm/releases/download/v0.10.3/capm-macos-arm"
      sha256 "sha256:9a120a64e69d3deef7c941074ef8fb1f2a91e3c174593610b984f79258cfdc36"
    end
    on_intel do
      url "https://github.com/getcapm/capm/releases/download/v0.10.3/capm-macos-x86_64"
      sha256 "sha256:930ff49cf0447d5adc3b77d3fadd168710eb126d9ad73a3e57fce61c99e41d8b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getcapm/capm/releases/download/v0.10.3/capm-linux-arm64"
      sha256 "sha256:434fcb086104295fdd5518ef201217402e6722b5809f69597adb148bb8385f7f"
    end
    on_intel do
      url "https://github.com/getcapm/capm/releases/download/v0.10.3/capm-linux-x86_64"
      sha256 "sha256:b41ce849243ac3e0a33fa57a5b79e1eaa4de26552343029da1c49558713bf84e"
    end
  end

  def install
    bin.install Dir["capm-*"].first => "capm"
  end

  test do
    assert_includes shell_output("#{bin}/capm --help"), "Code Analysis Package Manager"
  end
end
