class ntp::install(
  String $package_name,
  String $package_ensure,
) {
  package { 'ntp_package':
    ensure => $package_ensure,
    name   => $package_name,
  }
}
