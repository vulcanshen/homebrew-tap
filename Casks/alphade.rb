cask "alphade" do
  version "1.1.0"
  sha256 "82c4dd0e62b31adca0f4377c396fdce866dd2b539e0c9bcf34f751533a301870"

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
