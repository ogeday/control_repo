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
  file { '/root/README':
    ensure => file,
    mode => '0644',
    content => "This is server : ${fqdn}\n",
  }
  include profile::ssh_server
}
