# hypervisor configuration manifest
# API files
class commonpackages::python::flask-restful {
  # the API requires flask-restful which is installed by pip which is provided by epel
  include commonpackages::python::pip
  
  # Install flask-restful and its deps to enable the API
  package { ['flask-restful', 'six']:
    ensure   => installed,
    provider => 'pip',
    require  => Class['commonpackages::python::pip'],
  }
}
