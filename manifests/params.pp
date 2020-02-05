# @summary A short summary of the purpose of this class
#   OS-related variables (and others)
class apache::params {
  $install_ensure = 'present'
  case $::osfamily {    # $facts['os']['family'] <- you can also use this
    'RedHat': {
       $install_name = 'httpd'
    }
    'Debian': {
       $install_name = 'apache2'
    }
  }
}
