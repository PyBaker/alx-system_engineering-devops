# script for installing lint
# install puppet

package { 'puppet-lint':
    ensure   => '2.5.0',
    provider => 'gem',
}
