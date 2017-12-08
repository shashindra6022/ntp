class ntp::config inherits ::ntp { 
  file { 'ntp_config':
    ensure  => $config_ensure,
    path    => "/etc/${config_name}",
    owner   => $config_owner,
    group   => $config_group,
    mode    => $config_mode,
    content => template("${module_name}/ntp.conf.erb")
  }
}
