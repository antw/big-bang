# The port SSH is run on.
default[:openssh][:port] = 22

# Allow logging in as root. false is strongly recommended.
default[:openssh][:permit_root] = false

# Permit logging in with passwords? False forces SSH key login only.
default[:openssh][:password_auth] = true
