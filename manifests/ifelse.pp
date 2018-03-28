
if $facts['os']['family'] == "RedHat"
{
        $package_name = "httpd"
}
elsif $facts['os']['family'] == "Debian"
{
        $package_name = "apache2"
}
else
{
        fail  {'OS not supported' : }
}

