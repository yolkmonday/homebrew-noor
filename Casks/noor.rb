cask "noor" do
  version "1.2.1"
  sha256 "1f1d998647c996ffe576b86c765d051a952274c4cbc6e3c2229d197849389944"

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
