# == Class: profile::minecraft
#
class profile::minecraft {
  # resources
  class {'minecraft':
    install_dir => '/srv/minecraft'
  }
  #include minecraft
}
