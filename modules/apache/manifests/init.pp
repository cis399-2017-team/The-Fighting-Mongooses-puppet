class apache {
	package { 'apache2':
		ensure => latest,
	}
	service { 'apache2':
		enable => true,
		ensure => running,
		hasrestart => true,
		hasstatus => true,
		subscribe => '/etc/apache2/apache2.conf',
	}
	file { '/etc/apache2/apache2.conf':
		ensure => present,
		source => 'puppet:///modules/apache/$hostname/apache2.conf',
		owner => 'root',
		group => 'root',
		mode => '544',
	}
}
