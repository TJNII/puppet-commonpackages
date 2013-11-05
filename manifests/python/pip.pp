class commonpackages::python::pip {
  case $operatingsystem {
    debian: {
      package { 'python-pip':
        ensure => installed,
      }
    }
    
    centos, redhat: {
      # This requires the epel repo
      include packagemgrconfig
      package { 'python-pip':
        ensure  => installed,
        require => Class["packagemgrconfig"],
      }
    }
  }
}
