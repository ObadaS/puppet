class httpdredhaddebian {


        if $facts['os']['family']=="RedHat" {
                      
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

                            $mymessage = 'Httpd installé'
                            file {'/tmp/message':
                            content => $mymessage,
                            }
                    

                        
        } elsif $facts['os']['family']=="Debian" {
                            package { 'apache2':
                            ensure => present,
                            provider => 'apt',
                            }

                            service { 'apache2':
                            ensure => true,
                            enable => true,
                            require => Package['apache2'],
                            }

                            $mymessage = 'Apache2 installé'
                            file {'/tmp/message':
                            content => $mymessage,
                            }

        }
}

