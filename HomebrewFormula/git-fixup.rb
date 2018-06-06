class GitFixup < Formula
  version "0.1.4"
  desc "Fixup old git commits"
  homepage "https://github.com/quodlibetor/git-fixup"

  if OS.mac?
      depends_on "openssl"
      depends_on "libssh2"
      url "https://github.com/quodlibetor/git-fixup/releases/download/v#{version}/git-fixup-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "95587cc3a2b51063e2d6cb9b6a3cb9b5a1e1e17ea77db7d1b31d7e0f4fd722b1"
  elsif OS.linux?
      url "https://github.com/quodlibetor/git-fixup/releases/download/v#{version}/git-fixup-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c51d1d832c208bd375bfd2575a6eaea15b5e620d12718baab793db1552f6eedb"
  end

  def install
    bin.install "git-fixup"
    File.symlink bin / "git-fixup", bin / "git-squash"
  end
end
