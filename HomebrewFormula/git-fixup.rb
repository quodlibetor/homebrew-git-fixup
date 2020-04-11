class GitFixup < Formula
  version "0.1.8"
  desc "Fixup old git commits"
  homepage "https://github.com/quodlibetor/git-fixup"

  if OS.mac?
      url "https://github.com/quodlibetor/git-fixup/releases/download/v#{version}/git-fixup-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "aa0213a8569101cfe3a52719f2294b499e69adca869970c145b90d11a939575e"
  elsif OS.linux?
      url "https://github.com/quodlibetor/git-fixup/releases/download/v#{version}/git-fixup-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "42e8249f19b2685729f1d3292b99500868aa375f034d9aa289e435b125edcb2b"
  end

  def install
    bin.install "git-fixup"
    File.symlink bin / "git-fixup", bin / "git-squash"
  end
end
