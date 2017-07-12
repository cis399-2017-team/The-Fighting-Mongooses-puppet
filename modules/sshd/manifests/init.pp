class sshd {
	package { "openssh-server":
		ensure => installed;
	}

	file { "/etc/ssh/ssh_config":
		source => ["puppet:///modules/sshd/$hostname/ssh_config", "puppet:///modules/sshd/ssh_config",],
		mode => 644,
		owner => root,
		group => root,
		require => Package["openssh-server"],
	}

	service { "ssh":
		enable => true,
		ensure => running,
		hasstatus => true,
		hasrestart => true,
		require => [ Package["openssh-server"], File["/etc/ssh/ssh_config"] ],
		subscribe => File["/etc/ssh/ssh_config"],
	}
}
