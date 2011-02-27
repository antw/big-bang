# The port SSH is run on.
default[:openssh][:port] = 22

# Disable root login?
default[:openssh][:disable_root] = true

# Permit logging in with passwords? False forces SSH key login only.
default[:openssh][:password_auth] = true
