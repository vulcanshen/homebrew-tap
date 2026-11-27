cask "alphade" do
  version "1.2.0"
  sha256 "f6e297084e8551d74016d418c48a3a2a391389f90ef0ddf1b26c04d94feb7c73"

  url "https://github.com/vulcanshen/alphade/releases/download/v#{version}/Alphade.zip"
  name "Alphade"
  desc "Remove semi-transparent watermarks from your own videos"
  homepage "https://github.com/vulcanshen/alphade"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Alphade.app"

  zap trash: "~/Library/Containers/app.vulcanshen.alphade"
end
