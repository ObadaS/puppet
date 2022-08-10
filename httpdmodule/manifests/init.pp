class httpdmodule {
        package { 'httpd':
        ensure => present,
        provider => 'dnf',
        }

        service { 'httpd':
        ensure => true,
        enable => true,
        require => Package['httpd'],
        }

        exec { 'firewall-cmd':
        command => "firewall-cmd --add-port=80/tcp --perm && firewall-cmd --add-port=80/tcp",
        path => "/usr/bin/",
        }
	
	firewalld_service { 'Autoriser http':
	ensure => 'present',
	service => 'http',
	zone => 'public',
	}

        $mymessage = 'Httpd installé'
        file {'/tmp/message':
        content => $mymessage,
        }
}

