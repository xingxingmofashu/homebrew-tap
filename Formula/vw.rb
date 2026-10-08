class Vw < Formula
  desc "Play a video as the macOS desktop wallpaper"
  homepage "https://github.com/xingxingmofashu/VideoWallpaper"
  url "https://github.com/xingxingmofashu/VideoWallpaper/releases/download/v1.5.0/vw-macos-arm64.tar.gz"
  sha256 "2332ae3eb10312b9b48a201f418ca72911702686dc871e10740c81e97ee8740b"
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
