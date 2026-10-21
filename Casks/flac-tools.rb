cask "flac-tools" do
  version "1.2.0"
  sha256 "28530f9302fdb9fd44e594124b6fe896fcd07d6218bdb680f4087a7fdf227483"

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
