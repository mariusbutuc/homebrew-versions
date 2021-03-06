cask 'vagrant171' do
  version '1.7.1'
  sha256 'eaeb3ad6624ccaeaefa6fc7a77a2f5d9640ef9385c5eeebdb90602d5f2011176'

  # bintray.com is the official download host per the vendor homepage
  url "https://dl.bintray.com/mitchellh/vagrant/vagrant_#{version}.dmg"
  homepage 'http://www.vagrantup.com'
  license :mit

  pkg 'Vagrant.pkg'

  uninstall :script => { :executable => 'uninstall.tool', :input => %w[Yes] },
            :pkgutil => 'com.vagrant.vagrant'
end
