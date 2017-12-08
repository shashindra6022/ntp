class ntp::config(
  String $config_name,
  String $config_ensure,
  String $config_owner,
  String $config_group,
  String $config_mode,
  Array[String] $servers,
) { 
  file { 'ntp_config':
    ensure  => $config_ensure,
    path    => "/etc/${config_name}",
    owner   => $config_owner,
    group   => $config_group,
    mode    => $config_mode,
    content => template("${module_name}/ntp.conf.erb")
  }
}
