class web::params {

case $facts['os']['family'] {

'RedHat': {

	$package_name = "httpd"
	$service_name = "httpd"
	$serverip = $facts['networking']['interfaces']['enp0s3']['ip']

}

'Debian': {

        $package_name = "apache2"
        $service_name = "apache2"
        $serverip = $facts['networking']['interfaces']['enp0s3']['ip']

}

#'Windows': {
#
#
#}

default: {

	fail ("Your os not supported")

}
}
}
