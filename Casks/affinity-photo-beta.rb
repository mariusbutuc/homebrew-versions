cask 'affinity-photo-beta' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'http://s3.amazonaws.com/affinity-beta/download/Affinity+Photo+Customer+Beta.dmg'
  name 'Affinity Photo'
  homepage 'https://affinity.serif.com/en-us/photo/'
  license :commercial
  tags :vendor => 'Serif'

  app 'Affinity Photo Beta.app'
end
