class GitFixup < Formula
  version "0.1.1"
  desc "Fixup old git commits"
  homepage "https://github.com/quodlibetor/git-fixup"

  if OS.mac?
      depends_on "openssl@1.1"
      depends_on "libssh2"
      url "https://github.com/quodlibetor/git-fixup/releases/download/v#{version}/git-fixup-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "ce83c04e076596e378074a273bb3574c7e3530be8ce030412b7ccdafb6b59772"
  elsif OS.linux?
      url "https://github.com/quodlibetor/git-fixup/releases/download/v#{version}/git-fixup-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c69f47be2f420905e1e2eff9f0bcc794d34a6c1aa8f67cf3c77c1d4136ea6e5b"
  end

  def install
    bin.install "git-fixup"
    File.symlink bin / "git-fixup", bin / "git-squash"
  end
end
