# script for installing puppet-lint

exec {"Comz":
command => 'sudo python3 -m pip install "flask"',
}
package { 'flask':
ensure   => 'installed',
provider => 'pip',
}
