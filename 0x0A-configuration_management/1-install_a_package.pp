# script for installing puppet-lint

exec {"Comz":
command => 'sudo apt install python3;python3 -m pip install "flask==2.1.0"',
path    => '/usr/local/bin/:/bin/',
}
package { 'flask':
ensure   => '2.1.0',
provider => 'pip3',
}
