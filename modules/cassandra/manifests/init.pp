class cassandra {

	package { "openjdk-8-jre":
		ensure => installed
	}

	package { "python-pip":
		ensure => installed
	}

	file { "/etc/apt/sources.list.d/cassandra.sources.list":
		source => "puppet:///modules/cassandra/cassandra.sources.list"
	} 

	exec { "add cassandra key":
		environment => "PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/usr/lib/jvm/java-8-oracle/bin:/usr/lib/jvm/java-8-oracle/db/bin:/usr/lib/jvm/java-8-oracle/jre/bin",
		command => "curl https://www.apache.org/dist/cassandra/KEYS | sudo apt-key add -"
	}
 
	package { "cassandra":
		ensure => installed,
		require => Package["openjdk-8-jre"]
	}

	file { "/etc/cassandra/cassandra.yaml":
		source => "puppet:///modules/cassandra/cassandra.yaml",
		mode => 644,
		owner => root,
		group => root,
		require => Package["cassandra"]
	}		

	service { "cassandra":
		enable => true,
		ensure => running,
		hasstatus => true,
		hasrestart => true,
		require => [ Package["cassandra"], File["/etc/cassandra/cassandra.yaml"] ],
		subscribe => File["/etc/cassandra/cassandra.yaml"]
	}

	exec { "python patch":
		environment => "PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/usr/lib/jvm/java-8-oracle/bin:/usr/lib/jvm/java-8-oracle/db/bin:/usr/lib/jvm/java-8-oracle/jre/bin",
		command => "pip install cassandra-driver && export CQLSH_NO_BUNDLED=TRUE",
		onlyif => "if [ \"$CQLSH_NO_BUNDLED\" == TRUE ]; then true; else false; fi", 
		require => [ Package["python-pip"], Package["cassandra"] ],
	}
}

