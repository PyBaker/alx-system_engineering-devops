# script for installing puppet-lint

exec {"Comz":
command => 'sudo apt install puppet',
path    => '/usr/local/bin/:/bin/',
}
package { 'flask':
ensure   => '2.1.0',
provider => 'pip',
}
