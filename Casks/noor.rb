cask "noor" do
  version "1.2.1"
  sha256 "00fba62212833cc9f7cbf08cd48f9093cb2eda214259670b9b67c8279a41dd0a"

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
