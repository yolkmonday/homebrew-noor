cask "noor" do
  version "1.2.2"
  sha256 "c0152f48eddb119de6283b62241808b2d8722fad29a86ebb64e7b14c8f02aee9"

  url "https://github.com/yolkmonday/noor/releases/download/v#{version}/Noor-#{version}.zip"
  name "Noor"
  desc "Aplikasi waktu solat untuk macOS"
  homepage "https://github.com/yolkmonday/noor"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Noor.app"

  uninstall quit: "com.noor.app"

  postflight do
    system "open", "#{appdir}/Noor.app"
  end

  zap trash: [
    "~/Library/Preferences/com.noor.app.plist",
  ]
end
