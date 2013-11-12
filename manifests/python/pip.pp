class commonpackages::python::pip {
  case $operatingsystem {
    debian: {
      package { 'python-pip':
        ensure => installed,
      }
    }
    
    centos, redhat: {
      # This requires the epel repo
      package { 'python-pip':
        ensure  => installed,
        require => Yumrepo["epel"],
      }
    }
  }
}
