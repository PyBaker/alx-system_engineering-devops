# script for installing lint
include python
include python::flask
package { 'Flask 2.1.0':
  ensure   => '2.1.0',
  name     => 'flask',
  provider => 'pip3'
  require  => Class['python::flask'],
}
