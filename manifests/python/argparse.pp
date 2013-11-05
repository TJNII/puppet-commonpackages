class commonpackages::python::argparse {
  case $operatingsystem {
    debian: {
      package { 'python-argparse':
        ensure => installed,
      }
    }
    
    centos, redhat: {
      # This requires the epel repo
      include packagemgrconfig
      package { 'python-argparse':
        ensure  => installed,
        require => Class["packagemgrconfig"],
      }
    }
  }
}
