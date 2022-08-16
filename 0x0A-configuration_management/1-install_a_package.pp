# script for installing puppet-lint
exec {"Comz":
command => 'sudo apt-get update; sudo apt install python3-pip',
path    => '/usr/local/bin/:/bin/',
}

package { 'flask':
ensure   => '2.1.0',
provider => 'python-pip3',
}
