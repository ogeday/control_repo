class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDXP+24q8o123ZU5I5pFEOlCkxWdFgplA6Fc+7fL48r1LA6gvijSY8kQjMU5kqbG/Y9OTbCKXeQU7IvU3cGESUXhKmLG6IP9F0hP5zK7w21Gf+Sk8Pa4u5ns4P786uVulKxf2qfzpKUgQ4QxgAMWK3c7k2+ujReZQda2n5LZLXixOxl+yy/bN4yWnybTZj9zhB9gierHnRe0MkObFHWaEbVQLb/iiWzxUcJI9+kGVnfLFQHEdGEgtjKQpAfcnmiKC6j4aQMDqXZS4JU6Qyykgp5b5TfuFCKt9fz+4S2zNvMMCmCbldv6rosaPmTAWw3IoA6tfpYiJOABzk6UaCok8fX',
	}
}
