class issuemod {

        file{'Copy issue':
                 path => '/etc/issue',
                 source => 'puppet:///modules/issuemod/issuemod',
        }
        
        file{'Copy motd':
                path => '/etc/motd',
                source => 'puppet:///modules/issuemod/issuemod',
        }
        
        $osname = $facts['os']['name'];        
        $kernel = $facts['kernelrelease'];        
        $hostname = $facts['networking']['hostname'];        
        $ip = $facts['networking']['ip'];        
        $intname = $facts['networking']['primary'];
        $intmac = $facts['networking']['mac'];
        
        #stdlib
        file_line { "Add Line":
        
                path => "/etc/issue",
                line => "\n\n${$osname} kernel: ${$kernel}\n\n${$hostname} - ${$intname} - ${$ip} - ${$intmac}\n\n",
                
        
        }
}

