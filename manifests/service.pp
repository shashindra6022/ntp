class ntp::service(
  String $service_name    = $::ntp::service_name,
  String $service_ensure  = $::ntp::service_ensure,
  Boolean $service_enable = $::ntp::service_enable,
) {
  service { 'ntp_service':
    ensure => $service_ensure,
    name   => $service_name,
    enable => $service_enable,
  }
}
