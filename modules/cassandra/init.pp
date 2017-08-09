class cassandra {
    
    # Needed for cassandra to run
    package { "openjdk-8-jre":
        ensure => installed
    }

    # Needed to get the repository keys for the cassandra repo
    package { "curl":
        ensure => installed
    }
    
    # Adds the cassandra repo to apt, but only if it hasn't been done already
    exec { "echo "deb http://www.apache.org/dist/cassandra/debian 311x main" | sudo tee -a /etc/apt/sources.list.d/cassandra.sources.list":
        creates => "/etc/apt/sources.list.d/cassandra.sources.list"
    }
    
    # Retrieves the keys for the repo and adds them, SHOULD only trigger after the above command changes the repo sources
    exec { "curl https://www.apache.org/dist/cassandra/KEYS | sudo apt-key add -":
        subscribe => File["/etc/apt/sources.list.d/cassandra.sources.list"],
        refreshonly => true
    }
    
    package { "cassandra":
        ensure => installed
    }
    
}