cask "noor" do
  version "1.2.0"
  sha256 "c9501e9d5fbc01354178aec208917affacf49d2f021d3f009e92547ddbbe698c"

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
