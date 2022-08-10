class commonmodule {
        
                File { "/tmp/MyTmpFile": ensure => file, }
        
                $myresourcetype = File { owner => ec2-user , mode => '777', }

                Resource[$myresourcetype] { "/tmp/MyTmpFile1": ensure => file, }

                Resource[$myresourcetype] { "/tmp/MyTmpFile2": ensure => file, owner => root, }

        }
