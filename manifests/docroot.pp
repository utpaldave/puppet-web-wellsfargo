class web::docroot {

	file { 'create docroot directory':
		ensure	=> directory,
		path 	=> "/var/www/utpal",
		owner 	=> 'apache',
		mode	=> '0755',
	}

}
