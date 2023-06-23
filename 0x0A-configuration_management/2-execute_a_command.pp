# a manifest that kills a process named killmenow
# using exec Puppet resource

exec { 'killmenow':
	commant => 'pkill killmenow',
	path    => ['/bin', '/usr/bin'],
	onlyif  => 'pgrep killmenow',
}
