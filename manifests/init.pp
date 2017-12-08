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
  contain ntp::install
  contain ntp::config
  contain ntp::service

   Class['::ntp::install']
   -> Class['::ntp::config']
   ~> Class['::ntp::service']
 }
 
