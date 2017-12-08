class ntp::config(
  String $config_name   = $::ntp::config_name,
  String $config_ensure = $::ntp::config_ensure,
  String $config_owner  = $::ntp::config_owner,
  String $config_group  = $::ntp::config_group,
  String $config_mode   = $::ntp::config_mode,
){ 
  file { 'ntp_config':
    ensure  => $config_ensure,
    path    => "/etc/${config_name}",
    owner   => $config_owner,
    group   => $config_group,
    mode    => $config_mode,
    content => template("${module_name}/ntp.conf.erb"),
  }
}
