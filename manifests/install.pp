# brownbag::install
#
# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include brownbag::install
class brownbag::install (
  Array[String] $packages = ['git','vim'],
){
  package { $packages:
    ensure  => present,
  }

  if !defined(Package['ntp']) {
    package { 'ntp':
      ensure  => present,
    }
  }
}
