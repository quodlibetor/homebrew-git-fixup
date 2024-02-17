class GitFixup < Formula
  desc "Apply staged git changes to an ancestor git commit.
"
  version "0.1.9"
  on_macos do
    on_arm do
      url "https://github.com/quodlibetor/git-fixup/releases/download/v0.1.9/git-fixup-aarch64-apple-darwin.tar.gz"
      sha256 "b6b2c446a7f56b5ed179ae7556320e324d52545ff3cc773dfed19bbd65ecb005"
    end
    on_intel do
      url "https://github.com/quodlibetor/git-fixup/releases/download/v0.1.9/git-fixup-x86_64-apple-darwin.tar.gz"
      sha256 "ac0dc18640a29d70849811276b80fd7bb31bfdcfcf796917da05680feca61028"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/quodlibetor/git-fixup/releases/download/v0.1.9/git-fixup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3d10602b328c81c07148d5485e0023f0ba8bcd7af89c80d7a076033a470ba941"
    end
  end

  deprecate! date: "2024-02-16", because: "Renamed to git-instafix. Install quodlibetor/git-tools/git-instafix instead"

  def install
    on_macos do
      on_arm do
        bin.install "git-fixup"
      end
    end
    on_macos do
      on_intel do
        bin.install "git-fixup"
      end
    end
    on_linux do
      on_intel do
        bin.install "git-fixup"
      end
    end

    # Homebrew will automatically install these, so we don't need to do that
    doc_files = Dir["README.*", "readme.*", "LICENSE", "LICENSE.*", "CHANGELOG.*"]
    leftover_contents = Dir["*"] - doc_files

    # Install any leftover files in pkgshare; these are probably config or
    # sample files.
    pkgshare.install *leftover_contents unless leftover_contents.empty?
  end
end
