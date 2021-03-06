class apache {
	package { "apache2":
		ensure => installed,
	}

	file { "/etc/apache2/apache2.conf":
		source => ["puppet:///modules/apache/$hostname/apache2.conf", "puppet:///modules/apache/apache2.conf",],
		mode => 544,
		owner => root,
		group => root,
		require => Package["apache2"],
	}

	service { "apache2":
		enable => true,
		ensure => running,
		hasstatus => true,
		hasrestart => true,
		require => [ Package["apache2"], File["/etc/apache2/apache2.conf"] ],
		subscribe => File["/etc/apache2/apache2.conf"],
	}
	
	file { "/var/www/html":
		ensure => directory,
		recurse => true,
		source => "puppet:///modules/apache/html",
		owner => root,
		group => root,
		require => Package["apache2"],
	}
}
