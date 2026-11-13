cask "ciscrux" do
  version "1.0.0"
  sha256 "3f25892221c4ec039cc79c2c2748524f2f3f0c43706744664ad797fe167fca7a"

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
