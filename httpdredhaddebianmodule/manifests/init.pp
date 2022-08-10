class httpdredhaddebianmodule {
        if $facts['os']['family']=="RedHat" {
  
          class { 'apache': }

                $mymessage = 'Httpd installé'
                file {'/tmp/message':
                content => $mymessage,
                }

        } elsif $::osfamily=="Debian" {
          class { 'apache': }


                $mymessage = 'Apache2 installé'
                file {'/tmp/message':
                content => $mymessage,
                }

        }
}

