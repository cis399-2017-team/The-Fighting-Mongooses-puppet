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
	
	user { 'jsheabia':
		name => 'jsheabia',
		ensure => present,
		home => '/home/jsheabia',
		managehome => true
	}
	
	user { 'dholstege':
		name => 'dholstege',
		ensure => present,
		home => '/home/dholstege',
		managehome => true
	}
	
	user { 'jemin':
		name => 'jemin',
		ensure => 'present',
		home => '/home/jemin',
		managehome => true
	}
	
	ssh_authorized_key { 'jsheabia':
		name => 'merlin@Camelot',
		ensure => present,
		user => 'jsheabia',
		type => 'ssh-rsa',
		key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCwP0EXIM1EtCI+OyhgAZ8greAxbdz633f6m/OEsymAtJefkEjw1A5vrMmkyfeoSAELuRbYHxX3N2gPU606IewVZt9KDkL34HMwQDJU6P4fGX5u0WrhmVhqsY2e4UejPtjOtAXGvOjRzkFHuYMLSAL6BbTTTo96Najh9inMxYjb2rP+9E/IRCj9trkEKspHKOTGlj+ADYXtFNb/4KfXuC+oexl2JAGIfSzM9sFBPA3z4d+kxa9AWf1iKWhEB2m5lefD/p8jcjRpXNBm281rIj4vkeWOKFh71gVZ9vR0p+VtYLs3f5tCU2G7zA6pjW8RricBeqG7egWS7DuSLw8datTH'
	}
	
	ssh_authorized_key { 'dholstege':
		name => 'davis-kp',
		ensure => present,
		user => 'dholstege',
		type => 'ssh-rsa',
		key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCTPThmNila82dRmG8nJMBXVReNJT0lrk1saFKmmZ+UjR6t2TvQBErUmZUiA1/dwiIWKRLUF4miagKQMeZECvdPNarL748hlJvKAFibGEDFgTMD3gLnmV5O0dVOaR1yCK2et6RgPr0HaK1YoudllIO3dfcyD14YF7KgkQLUS29GqxzYa8UWfpZXdTAK3i4pGX2zE6FeLohEZT4HscOqa/QQsyrjvuIaWcQCp4YMiFhjMsMIYMsxk2Ge1cbDm+aRQcAIFSUdjeO3R4oMx4GS+WhewpCGVleBn8zSHuh4qBUcQDuMQ4TTJ7mrvNm2tGcHjtuZyKQbhBL1YW1EuS6VsEfZ'
	}
	
	ssh_authorized_key { 'jemin':
		name => 'jemin',
		ensure => present,
		user => 'jemin',
		type => 'ssh-rsa',
		key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCbFhR5TBjw6XXQuHlxi2Fan275atXva09j1dOtd+1VA5tfjIY+s+fj1c/m76c8naezVAFNp21R75TsXXSYh4PhNUZkzXonJBzBIo++i4B1TgpDOoK4I90lXH1uSADE3r5O9JN5ce7Tq140Ad6NxXyfxU6pZL0pYqXxFuuSXsQEVzVKqoXFOlgdx+jFGyrLsk5nLBK8BfXUJRXxqvW6F0DCp/x1OkzW4KZL+Y5hGPh+nhc7a2A5IF5l95xpd/uY/c3gwZg/A5HqIag5kbMMR6A6vb9rE4cgXpkBnRyXVbSKxOgk3zMEEFPslOzK/vRLqzGjAJDC9jIeiBFJ4F666e4z'
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
