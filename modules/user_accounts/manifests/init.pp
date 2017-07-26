class user_accounts {
	user { "cnf":
		ensure => present,
		managehome => true,
		shell => "/bin/bash",
	}
	ssh_authorized_key { "cnf_key":
		name => "cnf",
		type => "ssh-rsa",
		key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCROsSl7lF63moq10Z/JQ4MCEfFwxu/lH2LLTYHl6wolKRSEaJcFNx/Wszf76xTnyjIj9knbFu8OTQtu+zDYm9wwn2yXlULMLOoW76roQivq/zUknhtJYsbnDzCwYHiwdq9eGagn2vqtsZpoZG1vZrvt9SMiNHiyDkeM0yKNM+mi/qd+OWObqsNo0AW/W/5I7IIburbTB6riMBRgmqa5r0jXaQj7bGBImar3ohZRLWCpfH8pFnQpwVSAAAUfJEOCW5Y6dwWXqOh7lfVB1+T9CQsFyLIHyoo/vf+6Nu1D80CPI1IsjKMMuZEraqZrjhc6W9o/Y3+2GtLe0iePN2PA+wR",
		user => "cnf"
	}

	user { 'pogrebinsky':
		ensure => present,
		managehome => true,
		shell => '/bin/bash',
	}
	ssh_authorized_key { 'pogrebinsky_key':
		name => 'pogrebinsky',
		type => 'ssh-rsa',
		key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC+GfVig6yYm5Zc+5oQR5oCSpn6T2UgY/rEFmCbVPFILHlpmP3Ljm8J7IvDJyfJOZSbYWgt5LZGulpmZYayYFBo02vJC9daA8ax4LgqHmqrOQKl6J+NRwzUbEsQwrYznGwecOrX5d2IG5eV4lon1GAn2rOmZLQGgu6b1F39aYHZ6wRrN1ZAyXbXeX4Jb65Vfd8hbWNQ4/buJlVlJEW2aA0djUEdVNUQuFjZljH9bHk3yM9/Ak4sP9ezB5fNTciKuswvjXLfvl0W0Fds3wAwa+FFMDGfCdZNoigs42Yo533ld1X0fWjC9BvYRNw4k27bAZlX/9x1VcJwGMEQDtueE+aX',
		user => 'pogrebinsky',
	}
	user { 'Vino':
		ensure => present,
		managehome => true,
		shell => '/bin/bash',
	}
	ssh_authorized_key { 'Vino_key':
		name => 'Vino',
		type => 'ssh-rsa',
		key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC5muwuCYjAXyNqJey4F0hheb2KADcYtfLngn2qixILOdeKWNJB8+yGjYKHKc1/39qW55AtucV+77HEWzoYl1/V/0wswmE1RsnOyEce3gcH2naFNcnzKjqnCe0zcZCUBZIr3MsPvR1Y/BwNGCK+Vo7WYyqyOPNAmFj1dNiOEedTKJqzcFIO0awTY5MJC+G9q32YUbHv60vIeWtix1GnaIv9mbjIofYeBXlBr3mxH5dyZxunC+XyYlgCHToJpWlwef9KPQ9mPRsb3Hc98tx9pSpmI6+XHamaoXVuDAQUxEgkwTSth9w7q/S5Kv1rEL/3B8I7a1laT/dd3PPCNtM8s5y/',
		user => 'Vino',
	}
	user { 'kaelas':
		ensure => present,
		managehome => true,
		shell => '/bin/bash',
	}
	ssh_authorized_key { 'kaelas_key':
		name => 'kaelas',
		type => 'ssh-rsa',
		key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCLSFcuq/BzCKmFRJ6/aM8ywlUrth1+fSF4R7S7kwevTWN9fjPFULdLGdeWHoNK8gtnoPv8a9mlmW45g4FDGAipR9/yfqPqjKDr3HP62dmwutyiZp7I7iwrsydYjThV29F6TT6R4Mnbm/nmKys75C63EpxguEjWuGhRxe2AzZJMBN5Nvf6I0fA7UdDiAoRArMznyho9Y+Arog1oQO9WdETjil/3vnDRP6S79AvVIochJCdmQWOI9qixPAA1ozxhIgRujjk+iQtj25cbPoCPGSpFYMGvK5vrqWik+rLrkregcbryNuZjr3FeJwd1K/82OqjdwstwE7otvh9YiHUgDO6T',
		user => 'kaelas',
	}
	user { 'nboyd':
		ensure => present,
		managehome => true,
		shell => '/bin/bash',
	}
	ssh_authorized_key { 'nboyd_key':
		name => 'nboyd',
		type => 'ssh-rsa',
		key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCUAISsul1Ad4yd8EM3OBSvPh+8vvjkJ0awW8FWX0BfMgKBb/XQ6pyzCA2i5fqw5wC//0F0JCFhh7pin67077Jyq8PdL1c3WbUrJcRMoATtxQi51BfkxnaME0wngKxaiBdzL0Ge2hlmxQhQbiSBQMJvLU2/MjGgi+pGnja2GLzUprqICgBz2cIIDlIryESMr3p9JpfqgjHG6hZZG5hPOrPXenxnmBqSje1ld/9mvc5KCwclbFjtqkKpSFGiCjDgAoAjvuWXtx3sJw0VbborB5QZmyl261E4KDHBDoQpfznP9rx7R49YlM8BHrCAaDyJ3mlV1b50odh1AwxLZgUcTlAB',
		user => 'nboyd',
	}
	user { 'coletc':
		ensure => present,
		managehome => true,
		shell => '/bin/bash',
	}
	ssh_authorized_key { 'coletc_key':
		name => 'coletc',
		type => 'ssh-rsa',
		key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCEmvb0cSCkdIoTggm4y1AtGMLQGupt35HLCwL8ZF147cvRJ72EtU9kdyx4Ol74OqvwizwAVjqCWHDtttrNb1xnmlHAbsG3lpPGday4VXgjfcHAmzmaofKz1BiV/g4f370th92VP82+eBUiDpiF9U/WRVZR5xYvPH02ixY+4T0Tf5wCmG6JTsS6P4SSzEWNU4dkfq9kHTlC7L5BK/2XmdcqpduEz+Fp+5FB5OmHmWnsD1ZPHIN1ExASbHymamUKHTWCCePPgj3J6G0vPFJ4gtfrkDk6OfhX6z9X0jcMvKc4SmtJzIrdRfUpIeIzp9eV8+OB/M2qAo3inYr+pNRFNq1d',
		user => 'coletc',
	}
	user { 'mister_person':
		ensure => present,
		managehome => true,
		shell => '/bin/bash',
	}
	ssh_authorized_key { 'mister_person_key':
		name => 'mister_person',
		type => 'ssh-rsa',
		key => 'AAAAB3NzaC1yc2EAAAADAQABAAACAQC2H7AV3pr9nCZfYDHp5Ji1RLQozWYCC9PfodqvEBLY4S+RHsVWMuyenSEdf0mMuYT6QISk2hG5aTZD1psMPK8glFIt0UQ1m8ZPWaUzUogM95WWazwnzfiLcPLAPYRnMBMLO0yFFPlVFSWEOLQ7jMoM/eXOpPzZdZ8iDKa/Fe3tJqnJaNDncxzqvvRjyMWt5+OUidah+DkKWwzymQ+XH/ypIXY5+6bzcBfkb4Z1/ijRbcu7pGu01fWLRWCvy/bJDqBFgSEIGTSngVd/B0oXOGqvdwScgldVoIKExwzSQ7JDITmOTkej/VpwUC3lKM21a+HG85AB5YoPqFr/6ih1FORfQbmjoWdT4VAJoFH6WfngoqcOfci3qa+BNDecRiOuQbNu65ptPfOhJh7aiuDdL+tmY+C00gtbVDhLTYTM5jepembpFcv/7f2O9VtWJpPXZ4u1WkaffmqH3ZqV+/ET7wxDZeGgr6RvoG88UxdWUvr/wHgJvngEz4Y1DHitwCzCXIko0kH73eaIt8kaJUEdOl6FceoBZBK9i2mNktnd5sWtsxAXO/1GOR7a0Mw+XCUI9r8sN6B5fX9wbnBNj2kClEJLInvIVxeQqIw2NH2FzYgxKySCH4h04yoZR0fUSgPHxEdUQPM6X/lZDYX1bVd+NNsu9YQuRH4JLEclE5vTLIXLxw',
		user => 'mister_person',
	}
	user { 'nsato10':
		ensure => present,
		managehome => true,
		shell => '/bin/bash',
	}
	ssh_authorized_key { 'nsato10_key':
		name => 'nsato10',
		type => 'ssh-rsa',
		key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCH7Lspv4byYSdvKzSkh29q6lKco/f7WuiRVg06MeRiRqFDSknppvHoiAap1T3yVs8CH1wiWux9N1B2lEEqUMxFwxdR6vlgKkr8ACOLKVBBX3QPZSv5/jdaPENBqhIOQzQSv35vjNM6atPQ810fpKwoVtemFz4jfXP64GT91HK0oPbEMcTZOHJ2PBSx2l77K6/md/tF0JqK0voL6nz63X3npFuR3qdJ0kxLQghkdzAEryEsuTSn/KxBa2X/fyjfiGQY2h9sEG6fQLFdpTsj3zBmCxyksSUnxR3b+fkfjknJiHiuncu0CzchSbZXodah9zC/UGHo4L0LVAcMeBmvEQYF',
		user => 'nsato10',
	}
	user { 'cplachno':
		ensure => present,
		managehome => true,
		shell => '/bin/bash',
	}
	ssh_authorized_key { 'cplachno_key':
		name => 'cplachno',
		type => 'ssh-rsa',
		key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCyS6Huzp2PgAPg5RGCLmQrKFQj/MiXOqLHle+Cs/3bEpm7w+Za2OU5hfV10J72U+HQ+9Z7GwYjO1+0iGgfeCTOQqS+JC74ojnmCmw4iMVMII6Bm71eFWYFG/8IB6F9VTUWFx3WW0rPzsdh0qSLaLlLqzHTaOgeEEVWQ2C7IFFKitlqKnfA8m4jg9g+820BBuUwZe9fFY0Nl+vb1sY0FqmxMH1atMNHpTnnS9/jR9fnhuixa/VaSTF7lo+igcUIUl+B5pD+juiim7k9PPJ55p4b9ukujdSNeGruovJUFMIHgp2sRS9OmihlbHOhO1YMlry8/2ex6Fn5Gm6el5Z/KyoH',
		user => 'cplachno',
	}
}
