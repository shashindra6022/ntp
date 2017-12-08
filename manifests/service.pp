class ntp::service(
  String $service_name,
  String $service_ensure,
  Boolean $service_enable,
) {
  service { 'ntp_service':
    ensure => $service_ensure,
    name   => $service_name,
    enable => $service_enable,
  }
}
