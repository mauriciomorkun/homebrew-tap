cask "audiorouternow" do
  version "3.4.0"
  sha256 "36d971bbdbb3e535646f9215487b09e9f04b3b9957b3876dadae971b240b05e2"

  url "https://github.com/mauriciomorkun/AudioRouterNow/releases/download/v#{version}/AudioRouterNow.dmg"
  name "AudioRouterNow"
  desc "Free, open-source macOS audio routing — send system audio to multiple outputs simultaneously"
  homepage "https://audiorouternow.mauriciomorkun.com"

  # Sparkle 2.9.3 integriert — auto-updates via appcast
  auto_updates true

  app "AudioRouterNow.app"

  uninstall quit: "com.audiorouter.now"

  zap trash: [
      "~/.audiorouter",
      "~/Library/Logs/AudioRouterNow",
      "~/Library/LaunchAgents/com.audiorouter.now.helper.plist",
    ],
    delete: [
      "/Library/Audio/Plug-Ins/HAL/AudioRouterNow.driver",
    ]
end
