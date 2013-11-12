class commonpackages::python::yaml {
  case $operatingsystem {
    debian: {
      package { 'python-yaml':
        ensure => installed,
      }
    }
    
    centos, redhat: {
      # This requires the epel repo
      package { 'PyYAML':
        ensure  => installed,
        require => Yumrepo["epel"],
      }
    }
  }
}             
    
