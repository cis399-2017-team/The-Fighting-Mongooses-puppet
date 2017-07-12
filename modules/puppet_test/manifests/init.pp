class puppet_test {
	file { "/testdir/test":
		source => "puppet:///modules/puppet_test/test_content",
		ensure => present,
	}
}
