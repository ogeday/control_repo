node default {
}
node 'master.puppet.vm' {
  include role::master_server
  file { '/root/README':
    ensure => file,
    mode => '0644',
    content => "This is server : ${fqdn}\n",
  }
}
node 'minetest.puppet.vm' {
  include role::minetest_server
}
node /^web/ {
  include role::app_server
}
node /^db/ {
  include role::db_server
}
