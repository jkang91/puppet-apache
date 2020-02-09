# @Summary
#   Allows for the Apache service to restart when triggered
class apache::service {
  #stage { 'post':
  #  require => Stage['main'],
  # }  

  # schedule { 'everyday':
  #   period => 'daily',
  #   range  => "1-6",
  # }
  
  service { "${apache::service_name}":
    alias      => 'apache_service',
    ensure     => $apache::service_ensure,
    enable     => $apache::service_enable,
    hasrestart => true,
    # audit      => 'hadrestart'
    # require    => true,
    # schedule   => 'everyday',
    # stage      => 'post',
    # subscribe  => File ['apache_config'],
    # tag        => ['basemodule', 'web'],
  }
}
