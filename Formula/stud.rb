require 'formula'

class Stud < Formula
  url 'https://github.com/bumptech/stud/tarball/19a7f19686bcdbd689c6fbea31f68a276e62d886'
  version '0.3-19a7f19686'
  homepage 'https://github.com/bumptech/stud'
  sha1 '3a1b501fb254c6984ff7c8187b79d70d46bfa3d9'

  depends_on 'libev'

  def install
    system "make PREFIX=#{prefix}"
    system "make install PREFIX=#{prefix}"
  end

  def test
    system "#{bin}/stud -h"
  end
end
