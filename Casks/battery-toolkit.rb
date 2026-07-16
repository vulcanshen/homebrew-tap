# Adapted from the original mhaeuser/homebrew-mhaeuser cask
# (BSD-3-Clause, Copyright (C) 2022 Marvin Häuser).
# The upstream tap and app were archived in March 2026; this copy only
# updates the deprecated `depends_on macos:` string-comparison syntax so the
# cask loads without warnings on current Homebrew. Artifacts still point at
# the original, publicly available 1.8 release.
cask "battery-toolkit" do
  arch arm: "arm64"

  version "1.8"
  sha256 "f3eb00a1b96241e538fb16a2c7586deffc498f68baa3acb05fe195225e7aa204"

  url "https://github.com/mhaeuser/Battery-Toolkit/releases/download/#{version}/Battery-Toolkit-#{version}.zip"
  name "Battery Toolkit"
  desc "Control the platform power state of your Apple Silicon device"
  homepage "https://github.com/mhaeuser/Battery-Toolkit/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "Battery Toolkit.app"

  uninstall_preflight do
    system "sudo", "security", "authorizationdb", "remove", "me.mhaeuser.batterytoolkitd.manage"
  end

  uninstall launchctl:  "me.mhaeuser.batterytoolkitd",
            quit:       "me.mhaeuser.BatteryToolkit",
            login_item: "me.mhaeuser.BatteryToolkitAutostart",
            delete:     [
              "/Library/LaunchDaemons/me.mhaeuser.batterytoolkitd.plist",
              "/Library/PrivilegedHelperTools/me.mhaeuser.batterytoolkitd",
            ]

  zap trash: [
    "/var/root/Library/Preferences/me.mhaeuser.batterytoolkitd.plist",
    "~/Library/Preferences/me.mhaeuser.BatteryToolkit.plist",
  ]

  caveats <<~EOS
    This app will not work with quarantine attribute.
  EOS
end
