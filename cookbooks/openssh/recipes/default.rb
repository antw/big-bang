# A recipe which updates OpenSSH, and alters the configuration to run on
# a particular port, and disable (by default) root login.

# Update OpenSSH.
package('openssh') { action(:upgrade) }

# Process the sshd_config template.
template '/etc/ssh/sshd_config' do
  source 'sshd_config.erb'
  mode    0644
  owner  'root'
  group  'root'

  variables :port          => node[:openssh][:port],
            :disable_root  => node[:openssh][:disable_root],
            :password_auth => node[:openssh][:password_auth]
end