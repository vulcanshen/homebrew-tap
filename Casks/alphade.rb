cask "alphade" do
  version "1.0"
  sha256 "e8ff7f194e9ceed33d074e8b3a0f5254d6086b230822a74ad4bc8546295e2429"

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
