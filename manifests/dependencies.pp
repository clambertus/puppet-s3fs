class s3fs::dependencies {

  # if ! defined(Package['build-essential'])      { package { 'build-essential':      ensure => installed } }
  # if ! defined(Package['libfuse-dev'])          { package { 'libfuse-dev':          ensure => installed } }
  # 
  # if $operatingsystem == 'Ubuntu' {
  # if $lsbmajdistrelease < '14' {
  # if ! defined(Package['fuse-utils'])           { package { 'fuse-utils':           ensure => installed } }
  # }
  # }
  # 
  # if ! defined(Package['libcurl4-openssl-dev']) { package { 'libcurl4-openssl-dev': ensure => installed } }
  # if ! defined(Package['libxml2-dev'])          { package { 'libxml2-dev':          ensure => installed } }
  # if ! defined(Package['mime-support'])         { package { 'mime-support':         ensure => installed } }
  
  $packages = $::osfamily ? {
    'Debian' => [ 
      'build-essential', 
      'libfuse-dev', 
      'libcurl4-openssl-dev',
      'libxml2-dev',
      'automake',
      # 'mime-support',
      ],
  }

  ensure_resource('package', $packages, {'ensure' => 'present'})

}
