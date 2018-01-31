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
		key    => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDCXR19RCVoBHYeLdS/iEGCRYKTojdFWCWI2YjmQb7i8kdEFk8SssHFp5s0FbAFeHMzo3jBvliXm4nsRivRwK+dU4p/qhxdAs3plb7gGxSiscvPcVaSp6anxKlzbdfEiROYxkFeQf46KpPNJ44yrIGogl3v4KVUYWbxjKHbJhhnT8BrgDW26KPAxTIsXWXnOBVpPGsRmj6pmx89sCx3vlnh16eDafisYznPAjtrCThFLELAIO1uP+MPVGQG65Tl2hHJK3lSgyECeoFUeS/WSHUX1vxD6eHeTvRPd59PfuogyWL6b4I9jjF5kK4hCjASLtTT/DSlfUS5M9q5pbRrQhMb root@master.puppet.vm',
	}
}
