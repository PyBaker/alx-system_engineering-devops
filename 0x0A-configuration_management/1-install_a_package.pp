# script for installing puppet-lint

package { 'flask':
ensure   => '2.1.0',
provider => 'pip',
}
