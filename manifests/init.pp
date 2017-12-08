class ntp(
  String $package_name,
  String $package_ensure,
  String $config_name,
  String $config_ensure,
  String $config_owner,
  String $config_group,
  String $config_mode,
  Array[String] $servers,
  String $service_name,
  String $service_ensure,
  Boolean $service_enable,
) {
  class { '::ntp::install': }
  -> class { '::ntp::config': }
  ~> class { '::ntp::service': }
}
