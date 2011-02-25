sudo apt-get update
sudo apt-get install -y git-core ruby ruby-dev rubygems libopenssl-ruby
sudo gem install chef --no-ri --no-rdoc
sudo rm -rf /etc/chef
sudo git clone git://github.com/antw/big-bang.git /etc/chef

echo -e "\n"
echo "Bootstrap complete; ready for chef."
