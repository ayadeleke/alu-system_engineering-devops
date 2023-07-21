# sets up a client SSH configuration file so that we can connect to a server without using a password
file { 'Name file identity':
  path    => '/etc/ssh/ssh_config',
  line    => '    IdentityFile ~/.ssh/school',
  replace => true,
}

file { 'password authentication':
  path    => '/etc/ssh/ssh_config',
  line    => '    PasswordAuthentication no',
  replace => true,
}
