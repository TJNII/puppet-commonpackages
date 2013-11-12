class commonpackages::python::pexpect {
  case $operatingsystem {
    debian: {
      package { 'python-pexpect':
        ensure => installed,
      }
    }
    
    centos, redhat: {
      # This requires the epel repo
      package { 'pexpect':
        ensure  => installed,
        require => Yumrepo["epel"],
      }
    }
  }
}
