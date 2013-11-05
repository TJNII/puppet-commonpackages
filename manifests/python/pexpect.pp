class commonpackages::python::pexpect {
  case $operatingsystem {
    debian: {
      package { 'python-pexpect':
        ensure => installed,
      }
    }
    
    centos, redhat: {
      # This requires the epel repo
      include packagemgrconfig
      package { 'pexpect':
        ensure  => installed,
        require => Class["packagemgrconfig"],
      }
    }
  }
}
