sudo apt-get update
sudo aptitude install -y git-core ruby ruby-dev rubygems libopenssl-ruby
sudo gem install chef --no-ri --no-rdoc
sudo rm /etc/chef
sudo cp -r . /etc/chef

echo -e "\n"
echo "Bootstrap complete; ready for chef."
