cask "noor" do
  version "1.1.1"
  sha256 "61c748cd892a8cacd6440c301a038bbe5e662308b1fda5ff98ca8e18660b7a5c"

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
