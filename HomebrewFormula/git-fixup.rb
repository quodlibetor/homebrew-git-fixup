class GitFixup < Formula
  version "0.1.5"
  desc "Fixup old git commits"
  homepage "https://github.com/quodlibetor/git-fixup"

  if OS.mac?
      depends_on "openssl"
      depends_on "libssh2"
      url "https://github.com/quodlibetor/git-fixup/releases/download/v#{version}/git-fixup-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "b346aca1bfef57c992a1995af413bd7c52aeef36fb7d57972f9500488cf5cb8f"
  elsif OS.linux?
      url "https://github.com/quodlibetor/git-fixup/releases/download/v#{version}/git-fixup-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "48430a02558562540eb2ba45b2038a9de7fee63ea743340dd9c56d489fcaf61e"
  end

  def install
    bin.install "git-fixup"
    File.symlink bin / "git-fixup", bin / "git-squash"
  end
end
