class Vw < Formula
  desc "Play a video as the macOS desktop wallpaper"
  homepage "https://github.com/xingxingmofashu/VideoWallpaper"
  url "https://github.com/xingxingmofashu/VideoWallpaper/releases/download/v1.4.0/vw-macos-arm64.tar.gz"
  sha256 "add7b9cbfe0fbd51a6a7116c248f8ec97c41f958659595e13402d191446369d2"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  def install
    bin.install "vw"
  end

  test do
    assert_match "vw ", shell_output("#{bin}/vw --version")
  end
end
