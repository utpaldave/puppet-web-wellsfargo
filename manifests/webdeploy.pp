class web::webdeploy {

	file { 'deploy web page':
		ensure => file,
		path => '/var/www/utpal/index.html',
		source => 'puppet:///modules/web/index.html',
		owner => 'apache',
		mode => '0644',
	}
}
