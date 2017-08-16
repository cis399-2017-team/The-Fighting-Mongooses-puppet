node ip-10-0-8-128 {
	include puppet_update
	include sshd
}

node ip-10-0-8-99 {
	include sshd
	include apache
	include user_accounts
}

node ip-10-0-8-35 {
	include sshd
	include apache
	include user_accounts
}

node ip-10-0-8-250 {
	include sshd
	include cassandra
}
