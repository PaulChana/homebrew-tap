cask "flac-tools" do
  version "1.3.0"
  sha256 "1c11f3a6d170527125d1b300a8c57ad6c2c32b8290de1d706b46da8f87ad6be0"

  url "https://github.com/PaulChana/flac-tools/releases/download/v#{version}/FLAC-Tools-#{version}.dmg"
  name "FLAC Tools"
  desc "Tag editor and library tidier for FLAC collections"
  homepage "https://github.com/PaulChana/flac-tools"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on formula: ["fish", "flac"]
  depends_on macos: :sonoma

  app "FLAC Tools.app"

  zap trash: [
    "~/Library/Application Support/com.elf-audio.flac-tools",
    "~/Library/Caches/com.elf-audio.flac-tools",
    "~/Library/Caches/flac-tools",
    "~/Library/Preferences/com.elf-audio.flac-tools.plist",
    "~/Library/WebKit/com.elf-audio.flac-tools",
    "~/Library/WebKit/flac-tools",
  ]
end
