require 'formula'

class Stud < Formula
  url 'https://github.com/bumptech/stud/tarball/19a7f19686bcdbd689c6fbea31f68a276e62d886'
  version '0.3-19a7f19686'
  homepage 'https://github.com/bumptech/stud'
  sha256 'ca531d4a7a234d8287b46ec458872cbf693b06df858c865c33a4a327bad20ca6'

  depends_on "libev"
  depends_on "openssl"

  def install
    system "make PREFIX=#{prefix}"
    system "make install PREFIX=#{prefix}"
  end

  def test
    system "#{bin}/stud -h"
  end
end
