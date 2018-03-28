class web::webconf(

$local_ip_address =  $::web::class_server_ip,
) {
	notify {"Notifying $local_ip_address": }
	file {'Copy conf file':
		ensure => file,
		path   => '/etc/httpd/conf.d/utpal.conf',
#		source => 'puppet:///modules/web/utpal.conf',
		content => template('web/utpal.conf.erb'),
		owner  => 'apache',
		mode   => '0644',
	}
}
