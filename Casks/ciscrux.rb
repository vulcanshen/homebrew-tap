cask "ciscrux" do
  version "1.0.2"
  sha256 "12352b3228f43e8bd19ac68cc2def533294520478fc5ea7d4137f79b9c71047f"

  url "https://github.com/vulcanshen/ciscrux/releases/download/v#{version}/Ciscrux.zip"
  name "Ciscrux"
  desc "Screen saver that tells the time in Cistercian numerals"
  homepage "https://github.com/vulcanshen/ciscrux"

  livecheck do
    url :url
    strategy :github_latest
  end

  screen_saver "Ciscrux.saver"
end
