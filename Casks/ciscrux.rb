cask "ciscrux" do
  version "1.1.0"
  sha256 "fbeb9464d0575360071d36366840eefcd85e49b79cbc0b340179c5156d792646"

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
