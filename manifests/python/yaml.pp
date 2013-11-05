class commonpackages::python::yaml {
  case $operatingsystem {
    debian: {
      package { 'python-yaml':
        ensure => installed,
      }
    }
    
    centos, redhat: {
      # This requires the epel repo
      include packagemgrconfig
      package { 'PyYAML':
        ensure  => installed,
        require => Class["packagemgrconfig"],
      }
    }
  }
}             
    
