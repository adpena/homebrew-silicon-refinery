class SiliconRefinery < Formula
  desc "Zero-trust local data refinery framework for Apple Foundation Models"
  homepage "https://github.com/adpena/silicon-refinery"
  url "https://github.com/adpena/silicon-refinery/archive/refs/tags/v0.0.210.tar.gz"
  sha256 "e8a4922cc42e8980097f9d80e6bfac5f52a6e02d163c595c1d7b0b130fb8f486"
  license "MIT"
  head "https://github.com/adpena/silicon-refinery.git", branch: "main"

  depends_on "uv"

  def install
    libexec.install Dir["*"]
    # Homebrew treats README.md as a top-level metafile; keep a copy in libexec
    # so uv/hatch editable installs can resolve [project.readme] at runtime.
    libexec.install "README.md"

    (bin/"silicon-refinery").write <<~SH
      #!/bin/sh
      exec "#{Formula["uv"].opt_bin}/uv" run --project "#{libexec}" --directory "#{libexec}" silicon-refinery "$@"
    SH
  end

  def caveats
    <<~EOS
      On first run, uv may resolve project dependencies (including apple-fm-sdk from GitHub).
      If your shell cannot find `silicon-refinery`, restart the terminal so Homebrew PATH updates apply.
    EOS
  end

  test do
    output = shell_output("#{bin}/silicon-refinery --help")
    assert_match "SiliconRefinery", output
  end
end
