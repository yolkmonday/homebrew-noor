cask "noor" do
  version "1.1.0"
  sha256 "77a4c87755dbde9e35dd6481545af917c3fe4e125487c3fd5eb7c887dcc9af2c"

  url "https://github.com/yolkmonday/noor/releases/download/v#{version}/Noor-#{version}.zip"
  name "Noor"
  desc "Aplikasi waktu solat untuk macOS"
  homepage "https://github.com/yolkmonday/noor"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Noor.app"

  zap trash: [
    "~/Library/Preferences/com.noor.app.plist",
  ]
end
