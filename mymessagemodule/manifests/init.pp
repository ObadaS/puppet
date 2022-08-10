class mymessagemodule {
	$welcomevar="\n\nBonjour, Voici une première class Puppet interactive,\n"
	
	if $facts['os']['family']=="RedHat" {
		
			notify { 'ressource family':
					message => "${$welcomevar}C\'est un OS basé RedHat.C\'est du ${$facts['os']['name']}.\n",
			}
	} else {
			notify { 'ressource family':
				message => "${$welcomevar}Cet OS n\'est pas baséRedHat. C\'est ${$facts['os']['family']}\n",
			}
	}
}
