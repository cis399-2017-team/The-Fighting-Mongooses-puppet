node ip-10-0-8-128 {
	include puppet_update
	include sshd
}

node ip-10-0-8-99 {
	include sshd
}

node ip-10-0-8-35 {
	include puppet_test
	include sshd
}
