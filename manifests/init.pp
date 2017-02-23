# ADD A GOOD DESCRIPTION OF WHAT THIS MODULE DOES
#
# @example when declaring the class
#   class { 'template' }
#
# @param ensure Required. Must be 'present' or 'absent
# @param example_path Required.  Path to somewhere
#
# @author Dan @ iFunky.net
class template (
  String $ensure       = undef,
  String $example_path = $template::params::example_path,
) inherits template::params {

  unless $example_path =~ Stdlib::Absolutepath {
    fail ('ERROR:: You must specify a correct path')
  }

  unless $ensure =~ /^(present|absent)$/ {
    fail ('ERROR:: You must specify present or absent')
  }

  #notice('c:\temp' =~ Stdlib::Windowspath)

  if (downcase($::osfamily) != 'windows') {
    fail 'ERROR:: This module will only work on Windows.'
  }

  class { '::template::install': } ->
  class { '::template::config': } ~>
  class { '::template::service': } ->
  Class['::template']

}
