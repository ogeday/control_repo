# == Class: profile::hosts
#
class profile::hosts {
  # resources
  host { 'web':
    ensure => 'present',
    name => 'web.puppet.vm',
    ip => '172.18.0.3',
  }
  host { 'db':
    ensure => 'present',
    name => 'db.puppet.vm',
    ip => '172.18.0.2',
  }
  host { 'minetest':
    ensure => 'present',
    name => 'minetest.puppet.vm',
    ip => '172.18.0.4',
  }
  host { 'master':
    ensure => 'present',
    name => 'master.puppet.vm',
    ip => '172.18.0.1',
  }
}
