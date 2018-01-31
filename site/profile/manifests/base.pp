# == Class: profile::base
#
class profile::base {
  user { 'admin':
    comment => 'Ogeday',
    home => '/home/admin',
    ensure => present,
    # shell => '/bin/bash',
    # uid => '501',
    # gid => '20',
  }
  include profile::ssh_server
}
