class Capm < Formula
  desc "Code Analysis Package Manager 📦"
  homepage "https://getcapm.github.io"
  version "0.10.1"
  url "https://github.com/getcapm/capm/archive/refs/tags/v0.10.1.tar.gz"
  sha256 "01ba4719c80b6fe911b091a7c05124b64eeece964e09c058ef8f9805daca546b"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/getcapm/capm/releases/download/v0.10.1/capm-macos"
      sha256 "7560d53e3e9d3875a5237a67c3b2be8e67b2f24cdf2ce8bb3fccd8fc79540c4f"
    end
  end

  def install
    bin.install "capm-macos" => "capm"
  end

  test do
    assert_includes shell_output("#{bin}/capm --help"), "Code Analysis Package Manager"
  end
end
