# script for installing lint
# install puppet

exec {"Comz":
command => 'sudo apt-get update && apt-get upgrade -y',
path    => '/usr/local/bin/:/bin/',
}
  package { 'flask':
    ensure   => '2.1.0',
    provider => 'pip3',
  }
