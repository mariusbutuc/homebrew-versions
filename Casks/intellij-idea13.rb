cask 'intellij-idea13' do
  version '13.1.6'
  sha256 '2e4e2d71786cdcee2236731af25bd52129b2a18031b4899a3cc864ad632abce1'

  url "http://download.jetbrains.com/idea/ideaIU-#{version}.dmg"
  homepage 'https://www.jetbrains.com/idea/index.html'
  license :commercial

  app 'IntelliJ IDEA 13.app'

  zap :delete => [
                  '~/Library/Application Support/IntelliJIdea13',
                  '~/Library/Preferences/IntelliJIdea13',
                 ]

caveats <<-EOS.undent
  #{token} requires Java 6 like any other IntelliJ-based IDE.
  You can install it with

    brew cask install caskroom/homebrew-versions/java6

  The vendor (JetBrains) doesn't support newer versions of Java (yet)
  due to several critical issues, see details at
  https://intellij-support.jetbrains.com/entries/27854363
EOS
end
