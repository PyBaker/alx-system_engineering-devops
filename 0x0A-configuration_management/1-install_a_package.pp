# script for installing puppet-lint

package { 'flask':
ensure   => 'installed',
provider => 'pip',
}
