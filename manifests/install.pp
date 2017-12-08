class ntp::install inherits ::ntp {
  package { 'ntp_package':
    ensure => $package_ensure,
    name   => $package_name,
  }
}
