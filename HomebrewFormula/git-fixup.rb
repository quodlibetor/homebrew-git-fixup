class GitFixup < Formula
  version '0.1.0'
  desc "Fixup old git commits"
  homepage "https://github.com/quodlibetor/git-fixup"

  if OS.mac?
      depends_on "openssl"
      depends_on "libssh2"
      url "https://github.com/quodlibetor/git-fixup/releases/download/v#{version}/git-fixup-#{versi
on}-x86_64-apple-darwin.tar.gz"
      sha256 "1a632b8eb5db49991dc1e7fb77c608dfdbd0ccbe1314ae56b617e766a63d9a9c"
  elsif OS.linux?
      url "https://github.com/quodlibetor/git-fixup/releases/download/v#{version}/git-fixup-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8803e3a90ae74d909d8b595936b57ac6f1ccc991b8bc384c9aaae680a91a0f51"
  end

  def install
    bin.install "git-fixup"
    File.symlink bin / "git-fixup", bin / "git-squash"
  end
end
