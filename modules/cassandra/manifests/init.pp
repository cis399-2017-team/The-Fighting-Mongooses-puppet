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
		path => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/' ],
		command => "curl https://www.apache.org/dist/cassandra/KEYS | sudo apt-key add -"
	}
    
    exec { "update repositories":
        path => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/' ],
        command => "sudo apt-get update"
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
		path => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/' ],
		command => "pip install cassandra-driver",
		require => [ Package["python-pip"], Package["cassandra"] ],
	}
	
	file { "/etc/environment":
		source => "puppet:///modules/cassandra/environment",		
		mode => 644,
		owner => root,
		group => root
	}
}
