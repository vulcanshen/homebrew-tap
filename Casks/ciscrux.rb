cask "ciscrux" do
  version "1.0.1"
  sha256 "e454717ca6510529a89868091af0225925e22720a98b82a28b115b75897d2f80"

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
