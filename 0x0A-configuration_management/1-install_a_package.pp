# script for installing lint
# install puppet
class pypackage {

  package { 'flask':
    ensure   => '2.1.0',
    provider => 'pip3',
  }

}
