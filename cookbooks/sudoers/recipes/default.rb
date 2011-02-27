# A recipe which adds the given usernames and groups to the sudoers
# file.

# Start by updating the sudo package.
package('sudo') { action(:upgrade) }

# Process the sudoers template.
template '/etc/sudoers' do
  source 'sudoers.erb'
  mode    0440
  owner  'root'
  group  'root'

  variables :users  => node[:sudoers][:users],
            :groups => node[:sudoers][:groups]
end
