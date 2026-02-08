cask "noor" do
  version "1.0.0"
  sha256 "ab1f68055640730dadab24e64b9092625f7fe1a35bd5a3f2053bc9d84f44dc22"

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
