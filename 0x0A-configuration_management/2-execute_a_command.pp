# a manifest that kills a process named killmenow
# using exec Puppet resource

exec { 'killmenow_process':
	commant => 'pkill -f killmenow',
	path    => ['/usr/bin', '/usr/bin'],
	onlyif  => 'pgrep killmenow',
}
