# == Class: role::master_server
#
class role::master_server {
  include profile::base
  class { 'docker':
    manage_kernel => false,
  }
}
